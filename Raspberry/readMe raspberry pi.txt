Vous trouverez plus d'infos dans la documentation contenue dans le dossier "documentation"


Les moteurs sont commandés par un fichier python (main.py)

Le programme récupère la chaine de caractère envoyée deouis l'application android.
Cette chaine est comparée grâce au switch et nous adaptons donc la réponse du moteur
selon la commande. Les premières lignes du fichier servent à fixer les pas de variation
de chaque commande, ainsi que les valeurs maximales (obtenues précisément par des calibrages).
En effet, il est à noter que les servomoteurs et les ESC (Electronic Control Speed) sont commandées
par une PWM "originale" : il faut, sur un signal de période 20 ms, envoyer le signal haut pendant
1 à 3 secondes et le signal bas le reste du temps. (1 seconde correspond à 0 et 3 secondes à 1). Après
calibrage, nous avons obtenus les valeurs indiquées au début du fichier.