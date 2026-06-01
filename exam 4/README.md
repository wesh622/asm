# Examen - ASM

Examen d'Assembleur ARM 32 bits - Part 1 - 2024-2025 / durée : 1h30

**Communications interdites**

Il est formellement interdit de communiquer, que ce soit avec un humain ou une I.A. et/ou de partager un document ou une information.

**Actes non autorisés**
En application de la règle précédente, vous n'avez pas le droit d'accéder aux sites permettant de communiquer et/ou d'échanger des documents. Vous n'avez ainsi pas le droit d'aller sur Facebook (messenger), Discord, Google Drive, ...
Afin de vérifier qu'il n'y a eu aucune communication, l'historique de votre navigateur web pourra etre examiné. Vous n'avez donc pas le droit de supprimer l'historique de votre navigateur web (étant donné que c'est celui du compte exam que vous etes en train d'utiliser).

**Documents autorisés**

Vous avez droit à tous vos documents et notes, à (presque) tout internet, à condition de respecter les regles précedentes.

**Vous n'avez le droit à AUCUNE I.A., qu'elle soit gratuite ou payante. VOUS N'AVEZ NOTAMMENT PAS LE DROIT A COPILOT !!!**


# Structure
L’examen est divisé en 2 sections : 

- Section **instaban** :
Ces questions, très simples, correspondent à des savoirs essentiels, les bases de ce module, indispensables pour valider le module. Ces questions ne rapportent pas de points, mais ne pas répondre ou avoir faux à l’une de ces réponses implique l’invalidation directe du module et l’arrêt direct de la correction.
- Section **Story Mode** :
Les questions de cette section rapportent des points dans le barème standard, sur 20.


# Enoncé 

Vous avez dans le répertoire 3 fichiers : 
- "code.c", un programme en C
- "code.s", sa traduction en assembleur
- "reponses.txt", le fichier sur lequel vous devez répondre

**NE SERONT PRISE EN COMPTE QUE LES REPONSES INSCRITES DANS LE FICHIER "reponses.txt", ET DEPOSEE DANS LE COMPTE EXAMEN.**

Vous aurez besoin de lancer l'utilitaire suivant : 
```/opt/VisUAL2/VisUAL2.1.7.0.AppImage```
Si une erreur apparait lors du premier lancement, ce n'est pas grave. Tuez le processus avec un ```CTRL-C``` et recommencez.
Si l'utilitaire n'est pas présent, vous pouvez le recopier dans le home du compte exam depuis le chemin suivant : 
```/NAS_TNCY/depot/VisUAL2.1.7.0.AppImage```

# Instaban

## Question 0x00 

Inscrivez dans le fichier réponse : 
- votre nom et prénom
- le login du compte d'examen

## Question 0x01

Avec un CPU 32 bits, si je veux augmenter la taille de mes registres, je peux :
- ajouter des barretes mémoires
- souder des circuits intégrés spécifiques
- prendre les pilules recommandées dans les spams spécialisées dans les "agrandissements"...
- me brosser, on ne peut pas augmenter la taille des registres du CPU

Recopiez la ou les bonnes lignes dans le fichier réponse.

## Question 0x02

Dans la mémoire, les stackframes :
- s'emboitent
- s'empilent
- s'enfilent
- se tringlent

Recopiez la ou les bonnes lignes dans le fichier réponse.

## Question 0x03

La MMU, c'est : 
- ce qui gère l'accès à la mémoire
- ce qui gère l'accès aux disques SSDs
- ce qui gère l'accès au moteur de rendu de la carte graphique
- ta mère

Recopiez la ou les bonnes lignes dans le fichier réponse.

## Question 0x04

Les instructions d'un programme :
- sont stockées dans la mémoire, ce sont des données comme les autres
- sont stockées dans une mémoire séparée de la mémoire normale, ce sont des données spéciales
- ne sont jamais stockées en mémoire, ce ne sont pas des données
- il n'y a pas d'instruction, tout ceci est une illusion créée par le monstre en spaghetti volant

Recopiez la ou les bonnes lignes dans le fichier réponse.

# Story Mode

## Question 0x11

Il y a 2 erreurs de traduction du fichier C en fichier assembleur. 
Pour chacune de ces 2 erreurs, indiquez dans le fichier assembleur : 
- le numéro de la ligne assembleur qui est fausse
- la correction à apporter

## Question 0x12 

En considérant les 2 erreurs comme corrigées, et en suivant le formalisme de la pile déjà vu en TD et commencée dans le fichier reponse, complétez (et modifiez si besoin) le schéma de la pile **juste avant** l'execution de la ligne 81 (label *FINAL*) du fichier ASM.

Vous mettrez les valeurs des variables au même format que dans le code C correspodant (en décimal ou en hexa), et les adresses en hexa.
Vous ne mettrez pas les valeurs des registres sauvegardés, mais la signification de sauvegarde seulement - comme sur l'exemple donné en TD.

N'oubliez pas de mettre à jour BP et SP (qui ne sont donnés qu'à titre d'exemple dans la pile déjà écrite)

## Question 0x13

Si on décommente la ligne 12, quelle est la valeur affichée à l'écran ? (Il est bien sur interdit de compiler le fichier C pour répondre à cette question).

