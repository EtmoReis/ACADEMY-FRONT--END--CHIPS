*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
Resource  ../RESOURCES/acessar_academy.resource

*** Variables ***
${FULL_NAME_TEXT}  //input[contains(@name,'fullName')]
${MAIL_TEXT}          //input[contains(@name,'mail')]
${ACESS_PROFILE_TEXT}   //input[contains(@name,'accessProfile')]
${ADM}  ADMIN
${CPF_TEXT}  //input[contains(@name,'cpf')]
${PASSWORD_TEXT}  //input[contains(@name,'password')]
${CONFIRM_PASS_TEXT}  //input[contains(@name,'confirmPassword')]

*** Keywords ***

Step 5 - Create New User Full Name
    ${palavra_randomica}    Generate Random String    length=8    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${FULL_NAME}             M${palavra_randomica} dos Santos
    Log                     ${FULL_NAME}
    Input Text     ${FULL_NAME_TEXT}         ${FULL_NAME}
Step 6 - Create New User MAIL
    ${palavra_randomica}    Generate Random String    length=10    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${MAIL}             ${palavra_randomica}2@qacoders.com.br
    Log                     ${MAIL}
   Input Text     ${MAIL_TEXT}              ${MAIL}


Step 7 - Register a CPF
     ${numero_randomico}    Generate Random String  length=11   chars=[NUMBERS]
    Set Test Variable       ${CPF}             ${numero_randomico}
    Log                     ${CPF}
    Input Text    ${CPF_TEXT}                ${CPF}

Step 8 - Create New Password
    ${palavra_randomica}    Generate Random String    length=2    chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case     ${palavra_randomica}
    Set Test Variable       ${PASSWORD}               Test@1234
    Log                     ${PASSWORD}
   Input Password    ${PASSWORD_TEXT}       ${PASSWORD}
   Input Password   ${CONFIRM_PASS_TEXT}    ${PASSWORD}
   
Step 9 - Create Acess Profile
   Input Text     ${ACESS_PROFILE_TEXT}     ${ADM}
   
  Click Element   //button[@type='submit'][contains(.,'SALVAR NOVO')]

