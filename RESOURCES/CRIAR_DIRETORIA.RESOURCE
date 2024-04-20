*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/criar_novo_usuario.resource

*** Variables ***
${SELECTION_DIRETORIAS}  //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]
${SELECTION_CADASTRO_DIRETORIA}  //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${DIRETORIA_NAME_TXT}  //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]

*** Keywords ***

Step 4 - Acess session DIRETORIA

  Wait Until Element Is Visible     locator=${SELECTION_DIRETORIAS} 
  Click Element                     locator=${SELECTION_DIRETORIAS} 
   




Step 5 - Create New DIRETORIA
    ${palavra_randomica}    Generate Random String    length=12   chars=[LETTERS]
    ${palavra_randomica}    Convert To Lower Case         ${palavra_randomica}
    Set Test Variable       ${NAME_DIRETORIA}             ${palavra_randomica}Interações
    Log                     ${NAME_DIRETORIA}
          
  Wait Until Element Is Visible    locator=${SELECTION_CADASTRO_DIRETORIA}
  Click Element                    locator=${SELECTION_CADASTRO_DIRETORIA}
 
   Wait Until Element Is Visible   locator=${DIRETORIA_NAME_TXT}
   Input Text                      locator=${DIRETORIA_NAME_TXT}    text=${NAME_DIRETORIA}
   
   
   Click Element   //button[@type='submit'][contains(.,'SALVAR NOVO')]



