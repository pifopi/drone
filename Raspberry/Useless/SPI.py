"""Tentative d'utilisation du protocol SPI en python !!"""

import spidev
import time

spi = spidev.SpiDev()		
spi.open(0,0)				#open le port CE0 en SPI ?
while True :
	resp = spi.xfer2([0x00])	#send 0x00 to the slave
	print resp[0]
	time.sleep(1) 
