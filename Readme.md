# TP Sinatra

Lors de ce TP, vous allez créer un agenda.
Cet agenda est constitué de rendez-vous. Un rendez-vous est constitué d'une personne et d'une date.

Nous n'utiliserons pas de persistance de données (dans un premier temps), donc nous utiliserons une variable pour stocker nos données. L'identifiant de l'absence étant sa position dans le tableau.

Complétez toutes les parties pour arriver aux fonctionnalités suivante :

* Avoir une page web permettant de lister les rendez-vous (a), de les compter (b) et d'en ajouter (c)
* Avoir une API JSON permettant de :
  * retrouver un rdv en particulier (d)
  * ajouter un rdv (e)
  * supprimer un rdv (f)

À tout moment, vous pouvez lancer l'application en tapant ruby app.rb dans votre terminal.

Pour aller plus loin :
* Mettre en place Data Mapper et sqlite3
* Mettre en place une authentification avec token pour l'API

Bon courage !