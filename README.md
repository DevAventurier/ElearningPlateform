# ElearningPlateform
Tentative de mise en place d'un site d'administration-evaluation et suivi des etudiants d'un etablissement
-------------------------------------------------------------------------------------------------------------------------------------------------------
Cote instructions :

	Seul les admins peuvent enregistrer un compte du coup apres enregistrement d'un admin , ce dernier sera een charge de l'ajout des enseignants et eleves.
  Pour cette phase de test l'option "sign up" est defini par defaut toutefois lors d'un potentiel deploiement cette option sera invisible cote client.
  Il y'auras que l'option "sign in" puisque les enseignants et eleves aurons prealablement recu leurs identifiants de la part de l'adminstrateur.

	L'admin ajoute les utilisateur et les cours tout en gerant l'affiliation des proffs aux cours.

	Faire attention avec les roles, ils peuvent vous donner l'impression que  le code bug or vous essayer d'acceder a une route sans pour autant avoir confirme la permission.


Cote bases de donnees : 

	-Avec le dump SQL fourni il devrait pas y avoir de problemes
	-Sinon, creer manuelemnt dans notre SGBD une base de donnee du nom de "test5" et ne rien faire d'autre directement depuis le SGBD

Cote prerequis installation :

	-Vous devez avoir Git installé sur votre machine pour pouvoir cloner le dépôt depuis GitHub
	-Vous devez avoir python-SGBD(MySql de preference)-un editeur
	-Vous installez les dependances du fichier requirements.txt avec la commande " pip install -r requirements" [facultatif]
	-Ensuite faites un ( git clone https://github.com/DevAventurier/ElearningPlateform.git ) depuis votre cmd apres avoir choisi le depot local
	-Veiller a avoir installer django , mysqlclient
	-Acceder au dossier souche ( cd Projet ) avant deffectuer les migrations puisque mon projet se retrouver dans un dossier x de votre depot local
	-Lancer le serveur ( Normalement il n'est pas question ici d'installer des dependances, mais si au demarrage serveur vous contater des bugs , faites 
     un npm install et gerer la restauration des fichiers css et js avant de faire un npm start "Projet")

-------------------------------------------------------------------------------------------------------------------------------------

					B O N U S : L I G N E S de C O M M A N D E S
python -m pip install Pillow
py manage.py makemigrations
py manage.py migrate
	? pip install mysqlclient
pip install -U django-jazzmin
python manage.py runserver

--------------------------------------------------------------------------------------------------------------------------------------

Cote gestion :

	Username superUser : DevAventurier
	Email superUser : mail@gmail.com
	Password : P@SSWORD12

	NB: le superUser n'est pas autorise a crer des utilisateurs......l'authentification leur serait refuse

--------------------------------------------------------------------------------------------------------------------------------------


