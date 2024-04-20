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

Step 9 - Create Acess Profile blank
  Input Text     ${ACESS_PROFILE_TEXT}     ${EMPTY}
   Click Element   //button[@type='submit'][contains(.,'SALVAR NOVO')]
 Step 10 - verify Acess Users blank
   Wait Until Page Contains    O campo perfil de acesso é obrigatório
   Wait Until Page Contains Element    //p[@class='css-bbipig'][contains(.,'O campo perfil de acesso é obrigatório')]


Step 9 - Create Acess Profile incorret
  Input Text     ${ACESS_PROFILE_TEXT}      VISITANTE
   Click Element   //button[@type='submit'][contains(.,'SALVAR NOVO')]
 Step 10 - verify Acess Users incorret
   Wait Until Page Contains    O campo perfil de acesso deve ser preenchido de acordo com o seu cargo exemplo: ADMIN.
   Wait Until Page Contains Element    //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'O campo perfil de acesso deve ser preenchido de acordo com o seu cargo exemplo: ADMIN.')]