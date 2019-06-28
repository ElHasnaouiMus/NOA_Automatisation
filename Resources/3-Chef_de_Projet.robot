*** Settings ***
Resource    PO/3-Chef_de_Projet_Resources.robot
Resource    Commun.robot

*** Keywords ***
Charger La page avec le profil Chef de Projet
    Acceder avec le profil Chef de Projet
    Clicker sur le button Connexion

Refuser la demande par chef de projet
    Clicker sur Refuser : CP
    Motif de refus
    Enregistrer motif de refus

Acceder au Planning
    Planning

########################################## Processus : projet ###################################"

Remplir les Champs Mandatory Analyse : Projet
    Date début prévisionnelle
    Date fin prévisionnelle
    Date début réelle
    Date fin réelle
    Jalon T-1 Prév
    Jalon T-1 Réel
    Jalon T0 Prév
    Jalon T1 Prév
    
Elements declencheurs Analyse : Projet
    Jalon T0 Réel   

Remplir les Champs Mandatory Developpement : Projet
    Jalon T2 Prév

Elements declencheurs Developpement : Projet
    Jalons T1 Réel

Remplir les Champs Mandatory Recette : Projet
    Jalon T3 Prév

Elements declencheurs Recette : Projet
    Jalons T2 Réel

Remplir les Champs Mandatory Pilote/POC : Projet
    Jalon T3C Prév

Elements declencheurs Pilote/POC : Projet
    Jalons T3 Réel

Elements declencheurs Deploiement : Projet
    Jalon T3C Réel

############################################ Processus : BAU ######################################
    
Remplir les Champs Mandatory Analyse : BAU
    Date début prévisionnelle
    Date fin prévisionnelle
    Date début réelle
    Date fin réelle
    Début Dév Prév
    Budget
    Charge Prév

Elements declencheurs Analyse : BAU
    Budget
    Planning
    Début Dév Réel

Remplir les Champs Mandatory Developpement : BAU
    Début Recette Prév
    Version de l'application
    Budget
    Charge réelle
    
Elements declencheurs Developpement : BAU
    Budget
    Planning
    Début Recette Réelle

Remplir les Champs Mandatory Recette : BAU et Paramétrage
    Date de MEP réelle
    
############################################ Processus : Paramétrage ##################################

Remplir les Champs Mandatory Analyse : Paramétrage
    Date début prévisionnelle
    Date fin prévisionnelle
    Date début réelle
    Date fin réelle
    Début Param Prév
    Planning
    Budget
    Charge Prév

Elements declencheurs Analyse : Paramétrage
    Budget
    Planning
    Début Param Réelle
    
Remplir les Champs Mandatory Paramétrage : Paramétrage
    Début Recette Prév
    Budget
    Charge réelle
    
Elements declencheurs Paramétrage : Paramétrage
    Budget
    Planning
    Début Recette Réelle
    
############################################ Processus : Accompagnement ##################################

Remplir les Champs Mandatory Accompagnement : Analyse
    Date début prévisionnelle
    Date fin prévisionnelle
    Date début réelle
    Date fin réelle
    Planning
    Budget
    Charge Prév
    Charge réelle



