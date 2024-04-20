*** Settings ***

Library  SeleniumLibrary
Library  RequestsLibrary
library  String
Library  RequestsLibrary
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/criar_novo_usuario.resource
Resource  ../RESOURCES/CRIAR_DIRETORIA.RESOURCE

*** Variables ***
${SELECTION_DIRETORIAS}  //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]
${SELECTION_CADASTRO_DIRETORIA}  //button[@class='css-fvzsut'][contains(.,'Novo Cadastro')]
${SEARCH_DIRETORIA_TXT}   //input[contains(@class,'MuiInputBase-input MuiOutlinedInput-input MuiInputBase-inputSizeSmall css-1o6z5ng')]
${DIRETORIA_NAME_TXT}  //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]

*** Keywords ***

Step 5 - Acess SEARCH DIRETORIA

  Wait Until Element Is Visible    locator=${SEARCH_DIRETORIA_TXT}
  Input Text                       locator=${SEARCH_DIRETORIA_TXT}                      text=${NAME_DIRETORIA}     
    

    
  