*** Settings ***
Resource	PO/1-Demandeur_Resources.robot
Resource	Commun.robot

*** Keywords ***
Charger La page avec le profil Demandeur
    Acceder avec le profil Demandeur
    Clicker sur le button Connexion

Nouvelle demande
    Clicker sur nouvelle demande

Remplir les champs obligatoires
    [Arguments]  ${INTITULE_PROJET}
    Titre   ${INTITULE_PROJET}
    Catégorie projet
    Domaine fonctionnel
    Priorité RoadMap
    Date MEP souhaitée
    Processus
    Objet de la demande

Enregistrer Brouillon
    Enregistrer

Acceder a la demande a partir des brouillons
    Clicker sur Demandes
    Clicker sur brouillons
    Selectionner la demande dans brouillons
    
Déposer la demande
    Click sur le button deposer
    Confirmer



