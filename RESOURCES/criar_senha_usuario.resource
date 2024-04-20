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

Step 8 - Create New Password - 8 characters
   Input Password    ${PASSWORD_TEXT}       Etmo@12
   Input Password   ${CONFIRM_PASS_TEXT}    Etmo@12
Step 10 - verify Password - 8 characters
   Wait Until Page Contains    Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.
   Wait Until Page Contains Element    //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.')]




Step 8 - Create New Password +12 characters

   Input Password    ${PASSWORD_TEXT}       Etmo@12345678
   Input Password   ${CONFIRM_PASS_TEXT}    Etmo@12345678

Step 10 - verify Password +12 characters
   Wait Until Page Contains    Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.
   Wait Until Page Contains Element    //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.')]




Step 8 - Create New Confirm Password diferent
  Input Password    ${PASSWORD_TEXT}       Etmo@123
   Input Password   ${CONFIRM_PASS_TEXT}    Etmo@124

Step 10 - verify Confirm Password diferent
   Wait Until Page Contains  As senhas não conferem
   Wait Until Page Contains Element    //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'As senhas não conferem')]

 
 
 Step 8 - Create New Confirm Password blank
   Input Password    ${PASSWORD_TEXT}       Etmo@123
   Input Password   ${CONFIRM_PASS_TEXT}   ${EMPTY}
Step 10 - verify Confirm Password blank
   Wait Until Page Contains  O campo de confirmação de senha é obrigatório.
   Wait Until Page Contains Element    //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'O campo de confirmação de senha é obrigatório.')]



Step 8 - Create New Password blank
   Input Password    ${PASSWORD_TEXT}       ${EMPTY}
   Input Password   ${CONFIRM_PASS_TEXT}   Etmo@123

Step 10 - verify Password blank
   Wait Until Page Contains    O campo senha é obrigatório
   Wait Until Page Contains Element   //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'O campo senha é obrigatório')]


Step 8 - Create New Password no uppercase letters
   Input Password    ${PASSWORD_TEXT}      etmo@123 
   Input Password   ${CONFIRM_PASS_TEXT}   etmo@123
Step 10 - verify Password no uppercase letters
   Wait Until Page Contains    NA
   Wait Until Page Contains Element   NA




Step 8 - Create New Password uppercase letters
   Input Password    ${PASSWORD_TEXT}      ETMO@123 
   Input Password   ${CONFIRM_PASS_TEXT}   ETMO@123
Step 10 - verify Password uppercase letters
   Wait Until Page Contains    NA
   Wait Until Page Contains Element   NA




Step 8 - Create New Password only special characters
   Input Password    ${PASSWORD_TEXT}      !@#$%¨&*
   Input Password   ${CONFIRM_PASS_TEXT}   !@#$%¨&*

Step 10 - verify Password only special characters
   Wait Until Page Contains    Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.
   Wait Until Page Contains Element    //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.')]


Step 8 - Create New Password only numbers
  Input Password    ${PASSWORD_TEXT}     12345678
  Input Password   ${CONFIRM_PASS_TEXT}  12345678

Step 10 - verify Password only numbers
   Wait Until Page Contains    Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.
   Wait Until Page Contains Element   //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'Senha precisa ter: uma letra maiúscula, uma letra minúscula, um número, um caractere especial(@#$%) e tamanho entre 8-12.')]
   