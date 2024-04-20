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

Step 5 - Create New User Full Name plus 100
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${FULL_NAME}             M${palavra_randomica} dos Santos
    Log                     ${FULL_NAME}
    Input Text     ${FULL_NAME_TEXT}         Christopher Alexander Benjamin Cameron Daniel Edward Francis George Henry Ian James Kenneth Lawrence Michael Nicholas Oliver Patrick Quentin Richard Samuel Thomas Ulysses Victor William Xavier York Zachary Adam Brian Charles David Eric Fred Gregory Howard Ivan John Kevin Leonard Martin Nathan Owen Peter Quentin Roger Samuel Timothy Ulysses Vincent Wayne Xavier Yancy Zachary Adam Brian Charles David Eric Fred Gregory Howard Ivan John Kevin Leonard Martin Nathan Owen Peter Quentin Roger Samuel Timothy Ulysses Vincent Wayne Xavier Yancy Zachary
    
 Step 10 - verify User Full Name plus 100   
    Wait Until Page Contains    O nome completo deve ter no máximo 100 caracteres.
    Wait Until Page Contains Element    //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'O nome completo deve ter no máximo 100 caracteres.')] 


Step 5 - Create New User Full Name whith numbers
   Input Text     ${FULL_NAME_TEXT}    123456789
 Step 10 - verify User Full Name whith numbers
   Wait Until Page Contains   O campo nome completo não deve conter números
 

Step 5 - Create New User Full Name whith special characters
   Input Text     ${FULL_NAME_TEXT}    Etmo@@@$$%¨&
 Step 10 - verify User Full Name whith special characters
   Wait Until Page Contains   Informe o nome e sobrenome com as iniciais em letra maiúscula e sem caracteres especiais.
 

Step 5 - Create New User Blank name 
  Input Text     ${FULL_NAME_TEXT}     ${EMPTY}
Step 10 - verify User Blank name
   Wait Until Page Contains Element  //p[@class='css-bbipig'][contains(.,'O campo nome completo é obrigatório')]


 Step 5 - Create New User errror lastName
   Input Text     ${FULL_NAME_TEXT}   Etmo
Step 10 - verify User error lastName
  Wait Until Page Contains   Informe o nome e sobrenome com as iniciais em letra maiúscula e sem caracteres especiais