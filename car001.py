import RPi.GPIO as GPIO
import subprocess
from flask import Flask, render_template, request
import time
import os
import sys

app = Flask(__name__)

GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)
GPIO.setup(7, GPIO.OUT)
GPIO.setup(11, GPIO.OUT)
GPIO.output(11, GPIO.LOW)
GPIO.output(7, GPIO.LOW)
GPIO.setup(13, GPIO.OUT)
Servo = GPIO.PWM(13, 50)

RightDC = 9.8  # 9.0
MiddleDC = 7.7  # 6.0
LeftDC = 5.8

@app.route("/")
def main():
   return render_template('main.html')

@app.route("/car/go")
def car_go():
   GPIO.output(7, GPIO.HIGH)
   GPIO.output(11, GPIO.LOW)
   return render_template('main.html')
   @app.route("/car/go")

@app.route("/car/goright")
def car_goright():
   GPIO.output(7, GPIO.HIGH)
   GPIO.output(11, GPIO.LOW)
   Servo.start(MiddleDC)
   Servo.ChangeDutyCycle(RightDC)
   time.sleep(0.5)
   return render_template('main.html')

@app.route("/car/goleft")
def car_goleft():
   GPIO.output(7, GPIO.HIGH)
   GPIO.output(11, GPIO.LOW)
   Servo.start(MiddleDC)
   Servo.ChangeDutyCycle(LeftDC)
   time.sleep(0.5)
   return render_template('main.html')

@app.route("/car/back")
def car_back():
   GPIO.output(7, GPIO.LOW)
   GPIO.output(11, GPIO.HIGH)
   return render_template('main.html')

@app.route("/car/backright")
def car_back():
   GPIO.output(7, GPIO.LOW)
   GPIO.output(11, GPIO.HIGH)
   Servo.start(MiddleDC)
   Servo.ChangeDutyCycle(RightDC)
   time.sleep(0.5)
   return render_template('main.html')

@app.route("/car/backleft")
def car_back():
   GPIO.output(7, GPIO.LOW)
   GPIO.output(11, GPIO.HIGH)
   Servo.start(MiddleDC)
   Servo.ChangeDutyCycle(LeftDC)
   time.sleep(0.5)
   return render_template('main.html')


@app.route("/car/stop")
def car_stop():
   Servo.start(MiddleDC)
   GPIO.output(7, GPIO.LOW)
   GPIO.output(11, GPIO.LOW)
   Servo.ChangeDutyCycle(MiddleDC)
   time.sleep(0.5)
   return render_template('main.html')

@app.route("/car/left")
def car_left():
   Servo.start(MiddleDC)
   Servo.ChangeDutyCycle(LeftDC)
   time.sleep(0.5)
   return render_template('main.html')

@app.route("/car/right")
def car_right():
   Servo.start(MiddleDC)
   Servo.ChangeDutyCycle(RightDC)
   time.sleep(0.5)
   return render_template('main.html')

@app.route("/car/middle")
def car_middle():
   Servo.start(MiddleDC)
   Servo.ChangeDutyCycle(MiddleDC)
   time.sleep(0.5)
   return render_template('main.html')

if __name__ == "__main__":
   app.run(host='0.0.0.0', port=8000, debug=True)