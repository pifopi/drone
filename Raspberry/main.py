#!/usr/bin/env python
# coding: utf-8

""" On fait ici le test du pin 12 comme PWM  """
""" On include time pour le sleep et RPi.GPIO pour le GPIO ! """
""" On a rajouté socket pour la communication (UDP dans notre cas)"""
""" thread nous servira peut etre à gerer des processus, d'où la ligne suivante"""
""" signal et sys sont là pour kill les processus avec un cleanup des GPIO avant"""

import RPi.GPIO as GPIO
import socket
import thread
import signal
import time
import sys

def signal_term_handler(signal, frame) :
	print ("On nettoie avant de mourrir!")
	GPIO.cleanup()
	sys.exit(0)

"""---------------------------PWM_Fun-------------------------"""
"""Return une PWM sur le pin pin avec le duty cycle duty_cycle"""

def PWM_Fun (pin, duty_cycle) :

	GPIO.setmode (GPIO.BOARD)
	frequence = 50
	GPIO.setup (pin, GPIO.OUT)
	state = GPIO.gpio_function (pin)
	print ("On est dans l'etat {0} pour la pin {1} avec un duty cycle de {2} !".format (state, pin, duty_cycle))
	pwm = GPIO.PWM (pin, frequence)
	pwm.start (duty_cycle)
	return pwm

"""---------------------------PWM_Upd-------------------------"""
"""Return la PWM en argument en passant le au passage le duty_cycle"""

def PWM_Upd (pwm , duty_cycle ) :

	pwm.ChangeDutyCycle (duty_cycle)
	return pwm
	
"""---------------------------------------MAIN-----------------------------------------"""

signal.signal(signal.SIGTERM , signal_term_handler)

GPIO.setmode(GPIO.BOARD)

diviseur = 1.0
PAS_HAUT = 0.2 / diviseur
PAS_BAS = 0.2 / diviseur
PAS_AUCUN = 0.0 / diviseur
MAX_BAS = 3.0
MAX_HAUT = 10.0

PAS_GD = 0.3
MAX_GAUCHE = 12.5
MAX_DROITE = 2.5

duty_init0 = (MAX_GAUCHE + MAX_DROITE) / 2.0
duty_init1 = MAX_BAS

pinSet1 = [12 , duty_init0 , 0 , 0]
pinSet2 = [11 , duty_init1 , 0 , 0]

list = []
list.append(pinSet1)
list.append(pinSet2)

pwm = []

UDP_IP = ""
UDP_PORT = 2000

print ("Reception on it's way!")
sock = socket.socket (socket.AF_INET, socket.SOCK_DGRAM)
sock.bind ((UDP_IP, UDP_PORT))
#				      		___		            _____
data_prec = "aucun"#		              _|   |_                  ____/     \_ 
#				             / ~RIP~ \              __/	            \_
patience = 0 #IN MEMORIAM PATIENTIA...       \_     _/           __/		        \_	
#				               |___|		/		          \
#				         _____/\    \__________|___________________|
try : #					  ~   \ \    \   ~		~
	while True :#			    ~  \ \____\       ~  		~
#					 ~      \/_____\ ~  	   ~

		for i in range (0,40) :
			data, addr = sock.recvfrom (1024)
			
		if (data != data_prec):
			data_prec = data
			print (data)

		if data == "arret" :
			list[0][1] = duty_init0
			list[0][3] = 1
			list[1][1] = duty_init1
			list[1][3] = 1
			
		elif data == "gauche" :
			list[0][1] += PAS_GD
			list[0][3] = 1
			if list[0][1] > MAX_GAUCHE :
				list[0][1] = MAX_GAUCHE
				
		elif data == "droite" :
			list[0][1] -= PAS_GD
			list[0][3] = 1
			if list[0][1] < MAX_DROITE :
				list[0][1] = MAX_DROITE
				
		elif data == "haut" :
			list[1][1] += PAS_HAUT
			list[1][3] = 1
			if list[1][1] > MAX_HAUT :
				list[1][1] = MAX_HAUT
				
		elif data == "bas" :
			list[1][1] -= PAS_BAS
			list[1][3] = 1
			if list[1][1] < MAX_BAS : 
				list[1][1] = MAX_BAS
		
		elif data == "stabilisation"
			print ("Notre robot ne peut pas encore se stabiliser au mur")
		
		elif data == "orientation"
			print ("Notre robot ne peut pas encore changer d'orientation")
			
		elif data == "demarrage"
			# Voir avec clement comment faire ce cas la

		for i in range(len(list)) :				"""Partie de traitement des données reçues ainsi que l'initialisation des PWM"""
			if list[i][2] == 0 :				"""Initialisation"""
				pwm.append(PWM_Fun(list[i][0] , list[i][1]))
				list[i][2] = 1 
			if (list[i][2] == 1) & (list[i][3] == 1) :	"""Changement a effectuer"""
				pwm[i] = PWM_Upd(pwm[i],list[i][1])
				print("PWM {0} prend le duty_cycle {1}".format(i , list[i][1]))
				list[i][3] = 0 
		continue

except KeyboardInterrupt :
	print("On nettoie avant de partir !")
	GPIO.cleanup() 
