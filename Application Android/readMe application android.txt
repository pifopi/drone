Vous trouverez plus d'infos dans la documentation contenue dans le dossier "documentation"


Application android r�alis�e sous android studio.

Application qui sert � transformer un t�l�phone tournant sous android en telecommande.
Vous trouverez l'apk permettant l'installation sur votre telephone pour tester.
Les autre fichiers sont ceux utilis�s projet. Cependant, seuls les fichiers :
- SpiderDrone/app/src/main/java/fr/upmc/polytech/spiderdrone/Spider_Drone.java
- SpiderDrone/app/src/main/res/layout/activity_spider_drone.xml
- SpiderDrone/app/src/main/AndroidManifest.xml
sont importants. Le premier est le code java, le deuxi�me correspond au ressources utilis�es
par l'application (des boutons, etc) et le troisi�me sert simplement � demander au telephone
la permission d'acc�s au r�seau.


L'application utilise 4 boutons directionnels (haut, bas, droite et gauche) pour diriger le robot.
Elle utilise 4 boutons (orientation, stabilisation, arret et demmarage) pour d�finir l'action que l'utilisateur veut.
Il y a �galement un petit champ de texte permettant de v�rifier quel est la chaine de caractere envoy�e � la
raspberry pi (grace � des paquets UDP). Enfin, l'adresse IP (10.100.7.4) est affich�e et modifiable. Il suffit
de saisir l'adresse IP � laquelle envoyer les donn�es. Cette adresse IP est celle de la raspberry pi (10.100.7.4 dans notre cas)