Vous trouverez plus d'infos dans la documentation contenue dans le dossier "documentation"


Les moteurs sont command�s par un fichier python (main.py)

Le programme r�cup�re la chaine de caract�re envoy�e depuis l'application android.
Cette chaine est compar�e gr�ce au switch et nous adaptons donc la r�ponse du moteur
selon la commande. Les premi�res lignes du fichier servent � fixer les pas de variation
de chaque commande, ainsi que les valeurs maximales (obtenues pr�cis�ment par des calibrages).
En effet, il est � noter que les servomoteurs et les ESC (Electronic Control Speed) sont command�es
par une PWM "originale" : il faut, sur un signal de p�riode 20 ms, envoyer le signal haut pendant
1 � 3 secondes et le signal bas le reste du temps. (1 seconde correspond � 0 et 3 secondes � 1). Apr�s
calibrage, nous avons obtenus les valeurs indiqu�es au d�but du fichier.