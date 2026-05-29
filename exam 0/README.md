# Examen - ASM

Examen d'Assembleur ARM 32 bits - 2025-2026 / durée : 1h30

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

**NE SERONT PRISE EN COMPTE QUE LES REPONSES INSCRITES DANS LE FICHIER "reponses.txt", ET COPIE DANS LE REPERTOIRE /NAS_TNCY/exams/etudiants/<login_compte_exam>.**

Vous aurez besoin de télécharger l'utilitaire suivant : 
```/opt/VisUAL2/VisUAL2.1.7.0.AppImage```
depuis l'URL suivante : 
https://github.com/scc416/Visual2/releases

Si une erreur apparait lors du premier lancement, ce n'est pas grave. Tuez le processus avec un ```CTRL-C``` et recommencez.


# Instaban

## Question 0x00 

Inscrivez dans le fichier réponse votre nom et prénom

## Question 0x01

Dans une architecture ARM 32 bits, l'instruction BL stocke l'adresse permettant de revenir à l'instruction qui la suit : 
- directement dans la pile
- dans le registre SP
- dans le registre BP
- dans le registre LR
- dans le registre PC
- dans le registre LFI

Recopiez la ou les bonnes lignes dans le fichier réponse.

## Question 0x02

La MMU, c'est : 
- ce qui gère l'accès à la mémoire
- ce qui gère l'accès aux disques SSDs
- ce qui gère l'accès au moteur de rendu de la carte graphique
- ta mère

Recopiez la ou les bonnes lignes dans le fichier réponse.

## Question 0x03

Dans un mot de 32 bits, si on compte le nombre de bits à 1 et le nombre de bits à 0 et qu'on fait la somme du nombre de bits à 1 et du nombre de bits à 0, on obtient : 
- 1 bit
- 8 bits
- 32 bits
- 2 puissance 32 bits
- Ca dépend du contenu du mot

Recopiez la ou les bonnes lignes dans le fichier réponse.

## Question 0x04

Dans une architecture ARM 32 bits, la taille d'un bit est de :
- 1 bit
- 8 bits
- 32 bits
- 2 puissance 32 bits
- Ca dépend du contenu du bit

Recopiez la ou les bonnes lignes dans le fichier réponse.

# Story Mode

## Question 0x11

Il y a 2 erreurs de traduction du fichier C en fichier assembleur. 
Pour chacune de ces 2 erreurs, indiquez dans le fichier assembleur : 
- le numéro de la ligne assembleur qui est fausse
- la correction à apporter

## Question 0x12 

En considérant les 2 erreurs comme corrigées, et en suivant le formalisme de la pile déjà vu en TD et commencée dans le fichier reponse, complétez (et modifiez si besoin) le schéma de la pile **juste avant** la toute première execution de la ligne 82 (label *ENDDRAW*) du fichier ASM.

Vous mettrez les valeurs des variables au même format que dans le code C correspondant (en décimal ou en hexa), et les adresses en hexa.
Vous ne mettrez pas les valeurs des registres sauvegardés, mais la signification de sauvegarde seulement - comme sur l'exemple donné en TD.

N'oubliez pas de mettre à jour BP et SP (qui ne sont donnés qu'à titre d'exemple dans la pile déjà écrite)

## Question 0x13

Si on décommente la ligne 30 du fichier .c, quelle est la valeur affichée à l'écran ? (Il est bien sur interdit de compiler le fichier C pour répondre à cette question).
