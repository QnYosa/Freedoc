# README

projet 1 Freedoc

Freedoc est une application rails, son but mettre la concu en pls.

step 1 faites le bundle install

step 2 lancer le seed rails db:seed

Il y a la gem time_print si tu veux voir des beaux tableaux et la gem faker pour générer le seed plus facilement

et voila vous avez géneré une table de client, de doctor, de rdv, de ville et de specialité

Pour rappel:

Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment.
Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment.
Un doctor peut avoir plusieurs patients, au travers des appointments, et vice versa.
Chaque docteur, patient, et rendez-vous est lié à une city. Une city peut avoir plusieurs docteurs, patients, et rendez-vous.
Un docteur aurait plusieurs specialty, et une specialty pourrait concerner plusieurs doctor.

Step 3


Pour trouver les spécialités d'un docteur 7 :

Doctor.find(7).joins
Ensuite il faut faire une boucle pour afficher chaque specialty id
* ...

voilà, voilà 
