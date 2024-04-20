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
 Step 7 - Register a cpf whith Letters
  Input Text    ${CPF_TEXT}                ABCDEFEhijlm
Step 10 - verify User cpf whith letters
    Wait Until Page Contains    Deve preencher o CPF com 11 dígitos
    Wait Until Page Contains Element   //div[@class='MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation0 MuiAlert-root MuiAlert-standardError MuiAlert-standard css-laiely'][contains(.,'Deve preencher o CPF com 11 dígitos')]
    

Step 7 - Register a CPF must contain + 11 numbers

  Input Text    ${CPF_TEXT}                370572548303
Step 10 - verify User cpf must contain + 11 numbers
    Wait Until Page Contains    Deve preencher o CPF com 11 dígitos
    Wait Until Page Contains Element   //div[@class='MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation0 MuiAlert-root MuiAlert-standardError MuiAlert-standard css-laiely'][contains(.,'Deve preencher o CPF com 11 dígitos')]
    
Step 7 - Register a CPF must contain - 11 numbers

  Input Text    ${CPF_TEXT}                3705725483
Step 10 - verify User cpf must contain - 11 numbers
    Wait Until Page Contains    Deve preencher o CPF com 11 dígitos
    Wait Until Page Contains Element   //div[@class='MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation0 MuiAlert-root MuiAlert-standardError MuiAlert-standard css-laiely'][contains(.,'Deve preencher o CPF com 11 dígitos')]
    
    
Step 7 - Register a CPF Already Registered
  Input Text    ${CPF_TEXT}                37057254830
Step 10 - verify User cpf Already Registered
   Wait Until Page Contains  O cpf informado já existe em nossa base de dados.
   Wait Until Page Contains Element   //div[@class='MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation0 MuiAlert-root MuiAlert-standardError MuiAlert-standard css-laiely'][contains(.,'O cpf informado já existe em nossa base de dados.')]


