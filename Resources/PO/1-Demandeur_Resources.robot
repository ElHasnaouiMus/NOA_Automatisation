*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot
Library   DateTime
*** Keywords ***
Acceder avec le profil Demandeur
    Input Text	${USERNAME_INPUT}   AJUG6413
    Input Text  ${PASSWORD_INPUT}   test

Clicker sur nouvelle demande
    Wait Until Page Contains Element  ${DEPOSER_DEMANDE_BUTTON}  50s
    Click Element  ${DEPOSER_DEMANDE_BUTTON}
    Wait Until Page Contains  Initiale  50s

Titre
    [Arguments]  ${INTITULE_PROJET}
    Clear Element Text  ${TITRE_INPUT}
    Input Text  ${TITRE_INPUT}  ${INTITULE_PROJET}

Catégorie projet
    Select From List By Value  ${SCAT_PROJET}  ${CAT_PROJET}

Domaine fonctionnel
    Select From List By Value  ${SDOM_FONC}  ${DOM_FONC}

Priorité RoadMap
    Select From List By Value  ${SPRIO_RM}  ${PRIO_RM}

Date MEP souhaitée 
    sleep  1s
    ${date} =    Get Current Date
    ${date2}    Add Time To Date    ${date}    2 days
    ${date3} =	Convert Date	${date2}	exclude_millis=yes	result_format=%d/%m/%Y
    Execute JavaScript  document.getElementById('projected_mep_date').value='${date3}'
    
Processus
    Select From List By Label  ${SPROC}  Achat

Objet de la demande
    Clear Element Text  ${OBJET_DEMANDE}
    Input Text  ${OBJET_DEMANDE}  ${OBJET}

Clicker sur Demandes
    Click Element    xpath=//i[@class='glyphicon glyphicon-file iclTxtMesDem']
    
Clicker sur brouillons
    Click Link    //a[@href="/public/dev.php/demand/draft"]
    
Selectionner la demande dans brouillons
    Click Element	xpath=//*[@id="demand_dt"]/tbody/tr/td[6]/a[2]
    
Click sur le button deposer
    Execute JavaScript	window.scrollTo(0, document.body.scrollHeight)
    Click Button  ${DEPOS}

Confirmer
    Wait Until Element Is Visible  ${GAIN_BUTTON}
    Click Button  ${GAIN_BUTTON}
    Wait Until Page Contains  Dernière demande déposée  1min