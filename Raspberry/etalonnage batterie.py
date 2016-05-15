#!/usr/bin/env python
# coding: utf-8

import RPi.GPIO as GPIO
import socket
import thread
import signal
import time
import sys

GPIO.setmode(GPIO.BOARD)

diviseur = 1.0
MAX_BAS = 0.0 / diviseur
MAX_HAUT = 100.0 / diviseur
	
pin = 32
frequence = 1000

GPIO.setmode(GPIO.BOARD)
GPIO.setup(pin,GPIO.OUT)
pwm = GPIO.PWM(pin , frequence)
pwm.start (MAX_HAUT)
print("Premiere etape finie")

raw_input("Entrez un chiffre pour passer a la seconde etape\n")
pwm.ChangeDutyCycle (MAX_BAS)
print("Deuxieme etape finie")
raw_input("Entrez un chiffre pour terminer l'etalonnage\n")
GPIO.cleanup()