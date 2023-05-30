import signal
import sys
import time
import RPi.GPIO as GPIO


GPIO.setmode(GPIO.BCM)
GPIO.setup(17, GPIO.OUT)
GPIO.output(17, True)

GPIO.setup(18, GPIO.OUT)
p = GPIO.PWM(18,8000)

def signal_handler(sig, frame):
    print('You pressed Ctrl+C!')
    p.stop()
    GPIO.cleanup()
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

while True:
  p.start(1)
  time.sleep(6)
  p.ChangeDutyCycle(0)
  time.sleep(6)
