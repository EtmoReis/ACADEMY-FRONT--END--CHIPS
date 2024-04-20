*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/criar_novo_usuario.resource

*** Variables ***
${PESQUISAR_TEXT}   //input[contains(@class,'MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng')]
*** Keywords ***

Step 4 - Acess Users get
  Wait Until Page Contains Element        ${SELECT_BUTTON_USERS}
   Click Element                          ${SELECT_BUTTON_USERS}


Step 5 - Search User Registrer
   Wait Until Page Contains Element      ${PESQUISAR_TEXT}
   Click Element                         ${PESQUISAR_TEXT}
   Input Text                            ${PESQUISAR_TEXT}    //p[contains(.,'Etmo Carlos')]
   Press Keys                           ${PESQUISAR_TEXT}         \\13
  
