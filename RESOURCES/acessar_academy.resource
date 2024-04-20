*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary

*** Variables ***
${BROWSER}  Firefox
${URL}      https://automacao.qacoders-academy.com.br/login
${EMAIL}  sysadmin@qacoders.com
${PASSWORD}   1234@Test
${CROMEDRIVER_PATH}  C:\Users\etmom\AppData\Local\Programs\Python\Python312\Scripts\geckodriver.exe
${SELECT_BUTTON_SELECTOR}  //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${SELECT_BUTTON_USERS}   //span[contains(.,'Usuários')] 
${SELECT_BUTTON_NEW}   //button[contains(.,'Novo Cadastro')]
*** Keywords ***
Step 1 - Acess page Login Academy
     Open Browser   url=${URL}  browser=${BROWSER}   
     
 Step 2 - Print login and password and submit
   Input Text    id=email      ${EMAIL}
   Input Text    id=password   ${PASSWORD}
   Click Button   id=login
 
Step 3 - Verify URL after login
   Wait Until Page Contains Element      ${SELECT_BUTTON_SELECTOR}
   Click Element                         ${SELECT_BUTTON_SELECTOR}
Step 4 - Acess Users 
  Wait Until Page Contains Element        ${SELECT_BUTTON_USERS}
   Click Element                          ${SELECT_BUTTON_USERS}
Step 5 - Acess Users    
   Wait Until Page Contains Element       ${SELECT_BUTTON_NEW}
   Click Element                          ${SELECT_BUTTON_NEW}

  