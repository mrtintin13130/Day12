# Tic Tac Toe

###### aka. Morpion



## Jeu sur terminal

### INSTALLATION

Pour lancer le jeu déplacez-vous dans le dossier du jeu et exécutez la commande :

```
bundle install
```
Puis entrez le nom des 2 joueurs.

Puis entrer la commande :

```
ruby TicTacToe.rb
```

### Les règles du jeu

Pour gagner dans ce jeu, il vous faut aligner 3 fois le même symbole('X' ou 'O'), sachant que chacun des 2 joueurs ont un symbole attribué automatiquement.

Vous pouvez les aligner horizontalement, verticalement ou en diagonale.

```
x | x | x
---------
  |   |  
---------
  |   | 
```

ou :

```
o |   |  
---------
o |   |  
---------
o |   |  
```

ou encore :

```
x |   |  
---------
  | x |  
---------
  |   | x
```

etc... (Dans toutes les directions possibles)

#### EXEMPLE

```
x | o | x
---------
o | x | o
---------
x | o |  
```

Dans ce cas la, le joueur avec le symbole 'X' gagne la partie !

### Le jeu

Lorsqu'il vous est demandé de rentrer une case, rentrez le numero de la case qui correspond :

```
1 | 2 | 3
---------
4 | 5 | 6
---------
7 | 8 | 9
```

Afin d'y entrer un 'X' ou un 'O' en fonction du joueur.

### Contributeurs

Martin (Github user: mrtintin13130)

Elliot (Github user: nomoon456)
