*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/criar_novo_usuario.resource

*** Variables ***
${FULL_NAME_TEXT}  //input[contains(@name,'fullName')]
${MAIL_TEXT}          //input[contains(@name,'mail')]
${ACESS_PROFILE_TEXT}   //input[contains(@name,'accessProfile')]
${ADM}  ADMIN
${CPF_TEXT}  //input[contains(@name,'cpf')]
${PASSWORD_TEXT}  //input[contains(@name,'password')]
${CONFIRM_PASS_TEXT}  //input[contains(@name,'confirmPassword')]

*** Keywords ***


Step 6 - Create New User Email with wrong domain
   Input Text     ${MAIL_TEXT}              estherqacom.br
Step 10 - verify New User Email with wrong domain
   Wait Until Page Contains                 Email inválido
   Wait Until Page Contains Element        //p[@class='css-bbipig'][contains(.,'Email inválido')]




Step 6 - Create New User Email with space domain
  Input Text     ${MAIL_TEXT}              esther @qacoders.com.br

Step 10 - verify New User Email with space domain
  Wait Until Page Contains                 Email inválido
  Wait Until Page Contains Element        //p[@class='css-bbipig'][contains(.,'Email inválido')]


Step 6 - Create New User Email with space blank
  Input Text     ${MAIL_TEXT}              ${EMPTY}
Step 10 - verify New User Email with space blank
  Wait Until Page Contains Element  //p[@class='css-bbipig'][contains(.,'O campo email é obrigatório')]

 
 
 
 
 Step 6 - Create New User Already registered email
   Input Text     ${MAIL_TEXT}              teste123@qacoders.com
 Step 10 - verify New User Already registered email
   Wait Until Page Contains                 E-mail já cadastrado.
  Wait Until Page Contains Element        //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'E-mail já cadastrado.')]