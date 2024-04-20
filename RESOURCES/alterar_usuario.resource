*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/criar_novo_usuario.resource

*** Variables ***
${EDIT_TEXT}  (//button[@name='editar'][contains(.,'Editar')])[1]
${SAVE_TXT}   //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]
${FULL_NAME_ALETR_TEXT}  //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]
${MAIL_ALTER_TEXT}  //input[contains(@name,'mail')]
*** Keywords ***
Step 4 - To alter User
   Wait Until Page Contains Element        ${SELECT_BUTTON_USERS}
   Click Element                          ${SELECT_BUTTON_USERS}
   Wait Until Page Contains Element      ${EDIT_TEXT}
   Click Element                        ${EDIT_TEXT}
   Clear Element Text                id=fullName
   Input Text                        id=fullName           Esther Rodrigues dos Reis 
   Press Keys    id=fullName    \\t
   Clear Element Text                id=mail
   Input Text                        id=mail                esther@qacoders.com.br            
   Click Element   ${SAVE_TXT}

