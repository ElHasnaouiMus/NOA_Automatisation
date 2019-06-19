*** Settings ***
Library  SeleniumLibrary
Resource    ../variables.robot

*** Keywords ***

Acceder avec le profil PMO
    Input Text  ${USERNAME_INPUT}   JAYC6260
    Input Text  ${PASSWORD_INPUT}   test

Clicker sur Refuser : PMO
    Click Element    xpath=//button[.='Refuser']
    
Clicker sur accepter
    Click Element   xpath=//button[.='Accepter']

Selectionner Catégorie SI
    [Arguments]    ${PROCESSUS}   
    Select From List By Label   xpath=//select[@id='category_id']   ${PROCESSUS}

Détails de la qualification
    Input Text  xpath=//input[@id='detail_qualification']   detail qualification test

Applications impactées
    Click Element   xpath=//span[@class='multiselect-selected-text']
    Click Element   xpath=//label[contains(.,'50D')]

Nécessité d'urbanisme
    Select From List By Label   xpath=//select[@id='need_urban']    Oui

Etude transverse
    Select From List By Label   xpath=//select[@id='transversal_study']   Oui

RSSI Projet transverse
    Select From List By Label   xpath=//select[@id='rssi_project_transversal']   Oui

Change management
    Select From List By Label   xpath=//select[@id='change_management']   Oui

Programme à créer
    Select From List By Label   xpath=//select[@id='program_tocreate']   Oui

Selectionner le nom de Chef de projet
    Select From List By Label   xpath=//select[@id='cp_user_id']    GOULEAU Marie-France
    Fermer l'alerte : Le CP selectioné a 5 demande non traités
    
Fermer l'alerte : Le CP selectioné a 5 demande non traités
    ${isvisible} =  Run Keyword And Return Status    Page Should Contain Element   xpath=//div[@id='myCPModal']//button[@class='btn btn-default']
    Run Keyword If    ${isvisible}    Close popupBar

Close popupBar
    Wait Until Page Contains Element    xpath=//div[@id='myCPModal']//button[@class='btn btn-default']
    Double Click Element    xpath=//div[@id='myCPModal']//button[@class='btn btn-default']    





