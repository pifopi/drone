Vous trouverez plus d'infos dans la documentation contenue dans le dossier "documentation"


Application android réalisée sous android studio.

Application qui sert à transformer un téléphone tournant sous android en telecommande.
Vous trouverez l'apk permettant l'installation sur votre telephone pour tester.
Les autre fichiers sont ceux utilisés projet. Cependant, seuls les fichiers :
- SpiderDrone/app/src/main/java/fr/upmc/polytech/spiderdrone/Spider_Drone.java
- SpiderDrone/app/src/main/res/layout/activity_spider_drone.xml
- SpiderDrone/app/src/main/AndroidManifest.xml
sont importants. Le premier est le code java, le deuxième correspond aux ressources utilisées
par l'application (des boutons, etc) et le troisième sert simplement à demander au telephone
la permission d'accès au réseau.


L'application utilise 4 boutons directionnels (haut, bas, droite et gauche) pour diriger le robot.
Elle utilise 4 boutons (orientation, stabilisation, arret et demmarage) pour définir l'action que l'utilisateur veut.
Il y a également un petit champ de texte permettant de vérifier quel est la chaine de caractere envoyée à la
raspberry pi (grace à des paquets UDP). Enfin, l'adresse IP (10.100.7.4) est affichée et modifiable. Il suffit
de saisir l'adresse IP à laquelle envoyer les données. Cette adresse IP est celle de la raspberry pi (10.100.7.4 dans notre cas)