# TP NIHM : Visualisation  
### Visualisation des données des villes françaises
#####Ziad ZAÏRI - M2 IVI

#
##### Instructions pour utiliser l'application
Téléchargez l'archive "TP\_visualisation\_Zairi\_Ziad.zip", et extraire le tout.
https://www.dropbox.com/s/gm5rcgdyzqwye2e/TP_visualisation_Zairi_Ziad.zip?dl=0

Lancez Processing et ouvrir le fichier "tp1.pde".
Cliquez sur play. (Il se peut que le chargement prenne du temps).

##### Représentations visuelles
Les données représentées sont la position, la population et la densité des villes.

* La position de chaque ville est représentée par un cercle sur la fenêtre, cela permet de se faire une idée sur sa position par rapport aux autres villes françaises. 
* La population est représentée par la taille des cercles, plus un cercle est gros plus la population de la ville associée est grande. C'est une représentation assez classique de la donnée de population, et cela permet notamment de faire ressortir les plus grandes villes françaises.
* La densité est représentée par une couleur allant du bleu pour les villes les moins denses au rouge pour les plus denses (en passant par le violet, donc). En effet, une trop forte densité de population peut-être vue comme un danger et dans l'esprit commun le rouge est associé au danger, tandis que le bleu a plutôt une signification positive.

##### Interactions

* Lorsque le curseur de la souris est sur une ville, son nom s'affiche à côté de celle-ci.
* Lorsque le curseur de la souris est sur une ville, celle-ci change de couleur et passe au vert foncé.
* Lorsqu'on clique sur une ville celle-ci change de couleur et passe au vert clair, et ce jusqu'à ce qu'une autre ville soit sélectionnée.
* Il est possible de filtrer les villes avec un seuil minimal de population, pour cela, utilisez les flèches bas et haut.


L'ensemble du TP a été réalisé.

##### Sources
http://colorbrewer2.org/

https://processing.org/reference/lerpColor_.html

https://processing.org/examples/

https://processing.org/tutorials/

http://fr.wikipedia.org/wiki/Processing
