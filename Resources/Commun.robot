*** Settings ***
Library  SeleniumLibrary
Resource  variables.robot

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    maximize browser window

Acceder a La page de login
    Go To	${WEBSITE_URL}

Clicker sur le button Connexion
    Click Element   xpath=//input[@name='submit']

Fermer PHPDebugBar
    ${isvisible} =  Run Keyword And Return Status    Element Should Be Visible   xpath=//div[@class='phpdebugbar-header-right']/a[1]
    Run Keyword If    ${isvisible}    Close PHPDebugBar

Close PHPDebugBar
    Click Element   xpath=//div[@class='phpdebugbar-header-right']/a[1]

Chercher la demande creee
    [Arguments]  ${INTITULE_PROJET}
    Clicker sur plus de critères
    Remplir le Titre dans la rechercher   ${INTITULE_PROJET}
    Clicker sur Rechercher dans la rechercher
    Clicker sur le pictogramme edit dans la recherche

Clicker sur plus de critères
    Click Element   xpath=//a[contains(.,'Plus de critères')]

Remplir le Titre dans la rechercher
    [Arguments]  ${INTITULE_PROJET}
    Input Text  xpath=//input[@name='title']    ${INTITULE_PROJET}

Clicker sur Rechercher dans la rechercher
    Click Element   xpath=//input[@name='action']

Clicker sur le pictogramme edit dans la recherche
    Execute JavaScript	window.scrollTo(0, document.body.scrollHeight)
    Click Element	xpath=//*[@id="search_dt"]/tbody/tr/td[11]/a[2]

Enregistrer
    Scroll Element Into View   xpath=//*[@id="btn1"]
    Wait Until Element is visible   xpath=//*[@id="btn1"]
    Scroll Element Into View   xpath=//*[@id="btn1"]
    Set Focus To Element   xpath=//*[@id="btn1"]
    Click Element   xpath=//*[@id="btn1"]
    
Cloturer
    Scroll Element Into View    xpath=//button[.='Clôturer']
    Wait Until Element Is Visible    xpath=//button[.='Clôturer']    
    Click Element    xpath=//button[.='Clôturer']

Verifier que la demande est cloturée
    [Arguments]  ${INTITULE_PROJET}
    Clicker sur plus de critères
    Remplir le Titre dans la rechercher   ${INTITULE_PROJET}
    Clicker sur Rechercher dans la rechercher
    Verfier le status 'cloturé'

Verfier le status 'cloturé'
    Wait Until Page Contains    Clotûré    20s   
    
Motif de refus
    Wait Until Element Is Visible    xpath=//textarea[@id='labelComment']    
    Wait Until Element Is Enabled    xpath=//textarea[@id='labelComment']    
    Input Text    xpath=//textarea[@id='labelComment']    Commentaire

Enregistrer motif de refus
    Click Element    xpath=//button[@id='formSaveDecline']

Se deconnecter
    Wait Until Element Is Visible    xpath=//i[@class='glyphicon glyphicon-off iclTxt']   
    Wait Until Element Is Enabled    xpath=//i[@class='glyphicon glyphicon-off iclTxt']
    Click Element   xpath=//i[@class='glyphicon glyphicon-off iclTxt']

End Web Test
    Close Browser


