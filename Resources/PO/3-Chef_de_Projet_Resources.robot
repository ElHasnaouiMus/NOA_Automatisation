*** Settings ***
Library  SeleniumLibrary
Resource    ../Variables.robot

*** Keywords ***
Acceder avec le profil Chef de Projet
    Input Text  ${USERNAME_INPUT}   MIEM5861
    Input Text  ${PASSWORD_INPUT}   test

Clicker sur Refuser : CP
    Click Element    xpath=//*[@id="btn4"]
        
Planning
    Scroll Element Into View    xpath=//a[@href='#collapsePlanning']/span[@class='spClBgGain']
    Click Element	xpath=//a[@href='#collapsePlanning']/span[@class='spClBgGain']
    
Budget
    Scroll Element Into View	xpath=//span[@class='spClBgGain spClBgPink']
    Click Element	xpath=//span[@class='spClBgGain spClBgPink']

########################################## Processus : projet ###################################"

#Analyse
Date début prévisionnelle
    Execute JavaScript  document.getElementById('projected_start_stady_date').value='07/05/2019'

Date fin prévisionnelle
    Execute JavaScript  document.getElementById('projected_end_stady_date').value='09/05/2019'

Date début réelle
    Execute JavaScript  document.getElementById('realy_start_stady_date').value='08/05/2019'

Date fin réelle
    Execute JavaScript  document.getElementById('end_stady_date').value='09/05/2019'

Jalon T-1 Prév
    Execute JavaScript  document.getElementById('projected_date_t_1').value='08/05/2019'

Jalon T-1 Réel
    Execute JavaScript  document.getElementById('realy_date_t_1').value='04/05/2019'

Jalon T0 Prév
    Execute JavaScript  document.getElementById('projected_date_t0').value='08/05/2019'

Jalon T1 Prév
    Execute JavaScript  document.getElementById('projected_date_t1').value='08/05/2019'

Jalon T0 Réel
    Execute JavaScript  document.getElementById('realy_date_t0').value='05/05/2019'  

#Développement
Jalon T2 Prév
    Execute JavaScript	document.getElementById('projected_date_t2').value='08/05/2019'

Jalons T1 Réel
    Execute JavaScript	document.getElementById('realy_date_t1').value='06/05/2019'

#Recette
Jalon T3 Prév
    Execute JavaScript	document.getElementById('projected_date_t3').value='08/05/2019'

Jalons T2 Réel
    Execute JavaScript	document.getElementById('realy_date_t2').value='07/05/2019'

#Pilote/POC
Jalon T3C Prév
    Execute JavaScript	document.getElementById('projected_date_t3c').value='08/05/2019'

Jalons T3 Réel
    Execute JavaScript	document.getElementById('realy_date_t3').value='08/05/2019'

#Déploiement
Jalon T3C Réel
    Execute JavaScript	document.getElementById('realy_date_t3c').value='09/05/2019'
    
############################################ Processus : BAU ######################################

#Analyse
Début Dév Prév
    Execute JavaScript  document.getElementById('projected_dev_start_date').value='09/05/2019'
    
Début Dév Réel
    Execute JavaScript  document.getElementById('realy_dev_start_date').value='10/05/2019'
    
Charge Prév
    Scroll Element Into View    xpath=//input[@id='projected_charge']
    Input Text    xpath=//input[@id='projected_charge']    2100

#Développement
Fin Dév Prév
    Execute JavaScript  document.getElementById('projected_dev_end_date').value='10/05/2019'
    
Charge réelle
    Scroll Element Into View    xpath=//input[@id='realy_charge']
    Input Text    xpath=//input[@id='realy_charge']    2500
    
Version de l'application
    Scroll Element Into View    xpath=//input[@id='application_version']
    Input Text    xpath=//input[@id='application_version']    2.0
    
Fin Dév Réel
    Execute JavaScript  document.getElementById('realy_dev_end_date').value='11/05/2019'
    
#Recette
Date de MEP réelle
    Execute JavaScript  document.getElementById('realy_mep_date').value='12/05/2019'
    
############################################ Processus : Paramétrage ##################################

#Analyse
Début Param Prév
    Execute JavaScript  document.getElementById('projected_setting_start_date').value='10/05/2019'
    
Début Param Réelle
    Execute JavaScript  document.getElementById('realy_setting_start_date').value='11/05/2019'

#Paramétrage
Fin Param Prév
    Execute JavaScript  document.getElementById('projected_setting_end_date').value='11/05/2019'

Fin Param Réelle
    Execute JavaScript  document.getElementById('realy_setting_end_date').value='12/05/2019'
