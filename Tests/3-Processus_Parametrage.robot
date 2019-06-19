*** Settings ***
Resource  ../Resources/1-Demandeur.robot
Resource  ../Resources/2-PMO.robot
Resource  ../Resources/3-Chef_de_Projet.robot
Resource  ../Resources/Commun.robot
Library   DateTime

Suite Setup     Run Keywords   commun.Begin Web Test   Get DateTime
Suite Teardown  commun.End Web Test

*** Variable ***
${INTITULE_PROJET}    titre

*** Keywords ***
Get DateTime
    ${INTITULE_PROJET}	Get Current Date
    ${INTITULE_PROJET}=    Catenate    TestAuto    ${INTITULE_PROJET}
    Set Suite Variable	${INTITULE_PROJET}

*** Test Cases ***
1-Creee : a partir d’un brouillon
    Acceder a La page de login
    Charger La page avec le profil Demandeur
    Fermer PHPDebugBar
    Nouvelle demande
    Remplir les champs obligatoires	${INTITULE_PROJET}
    Enregistrer Brouillon
    Se deconnecter
    Charger La page avec le profil Demandeur
    Acceder a la demande a partir des brouillons
    Déposer la demande
    Se deconnecter
    
2-Qualification : Refuser la demande
    Charger La page avec le profil PMO
    Chercher la demande creee   ${INTITULE_PROJET}
    Refuser la demande
    Se deconnecter
    
1-Creee : a partir de la demande refusee
    Charger La page avec le profil Demandeur
    Chercher la demande creee   ${INTITULE_PROJET}
    Déposer la demande
    Se deconnecter

2-Qualification : Accepter la demande
    Charger La page avec le profil PMO
    Chercher la demande creee   ${INTITULE_PROJET}
    Accepeter la Demande
    Chercher la demande creee   ${INTITULE_PROJET}
    Remplir les Champs Mandatory Qualification    ${INTITULE_PROJET}    Paramétrage
    Elements declencheurs Qualification
    Enregistrer
    Se deconnecter

3-Analyse : Refuser la demande
    Charger La page avec le profil Chef de Projet
    Chercher la demande creee   ${INTITULE_PROJET}
    Refuser la demande par chef de projet
    Se deconnecter

2-Qualification : Modifier la demande refusee
    Charger La page avec le profil PMO
    Chercher la demande creee   ${INTITULE_PROJET}
    Elements declencheurs Qualification
    Enregistrer
    Se deconnecter
        
3-Analyse : Accepter la demande
    Charger La page avec le profil Chef de Projet
    Chercher la demande creee   ${INTITULE_PROJET}
    Acceder au Planning
    Remplir les Champs Mandatory Analyse : Paramétrage
    Elements declencheurs Analyse : Paramétrage
    Enregistrer

5-Paramétrage
    Chercher la demande creee   ${INTITULE_PROJET}
    Acceder au Planning
    Remplir les Champs Mandatory Paramétrage : Paramétrage
    Elements declencheurs Paramétrage : Paramétrage
    Enregistrer

6-Recette
    Chercher la demande creee   ${INTITULE_PROJET}
    Acceder au Planning
    Remplir les Champs Mandatory Recette : BAU et Paramétrage

7-Cloturee
    Cloturer
    Verifier que la demande est cloturée   ${INTITULE_PROJET}
    