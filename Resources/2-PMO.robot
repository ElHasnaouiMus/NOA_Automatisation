*** Settings ***
Resource    PO/2-PMO_Resources.robot
Resource    Commun.robot

*** Keywords ***
Charger La page avec le profil PMO
    Acceder avec le profil PMO
    Clicker sur le button Connexion

Refuser la demande
    Clicker sur Refuser : PMO
    Motif de refus
    Enregistrer motif de refus
    
Accepeter la Demande
    Clicker sur accepter

Remplir les Champs Mandatory Qualification
    [Arguments]  ${INTITULE_PROJET}    ${PROCESSUS}
    Selectionner Catégorie SI    ${PROCESSUS}
    Détails de la qualification
    Applications impactées
    Nécessité d'urbanisme
    Etude transverse
    RSSI Projet transverse
    Change management
    Programme à créer

Elements declencheurs Qualification
    Selectionner le nom de Chef de projet
