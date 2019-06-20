*** Variables ***

${BROWSER}	chrome
${WEBSITE_URL}	http://10.241.104.106/public/dev.php

#################  Variables Acces  #################
${USERNAME_INPUT}	xpath=//input[@name='username']
${PASSWORD_INPUT}	xpath=//input[@name='password']


#################  Variables Demandeur  #################
${USERNAME} =  FTXV3790
${PASSWORD} =  test
${LOGIN_BUTTON} =  xpath=//input[@name='submit']
${DEPOSER_DEMANDE_BUTTON} =  xpath=//span[.='Déposer une demande']
${TITRE_INPUT} =  xpath=//input[@id='title_demand']
${SCAT_PROJET} =  xpath=//select[@id='type_demand_id']
${CAT_PROJET} =  1
${SDOM_FONC} =  xpath=//select[@id='domain_id']
${DOM_FONC} =  4
${SPRIO_RM} =  xpath=//select[@id='priority_id']
${PRIO_RM} =  1
${DATE_MEP} =  xpath=//input[@id='projected_mep_date']
${SPROC} =  xpath=//*[@id="process"]
${PROC} =  xpath=//*[@id="select2-process-result-giuh-4"]
${OBJET_DEMANDE} =  xpath=//textarea[@id='object_demand']
${OBJET} =  Objet de la demande
${DEPOS} =  xpath=//button[@class='btn btn-success']
${GAIN_BUTTON} =  xpath=/html/body/div[2]/div/div/div[3]/button[1]

########################  Variables CP  ######################"
${USERNAME_CP}	BXCS8075
${CP_SEARCH_LINK}	xpath=//a[contains(.,'Plus de critères')]
${STATUT_LIST}	xpath=//*[@id="status"]
${TITLE_FIELD}	xpath=//input[@name='title']
${SEARCH_BUTTON}	xpath=//input[@name='action']
${EDIT_LINK}	xpath=//a[@href='/public/dev.php/demand/edit/715']
${ELARGIR_PLANNING}	xpath=//*[@id="instruction"]/div[8]/div/div[1]/h4/a
${my_date_to_select}	07/05/2019
