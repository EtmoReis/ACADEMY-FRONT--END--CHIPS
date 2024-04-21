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
${SEARCH_DIRETORIA_TXT}   (//button[@name='editar'][contains(.,'Editar')])[28]
${DIRETORIA_NAME_TXT}   (//button[@name='editar'][contains(.,'Editar')])[1]
${CLEAR}     //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]
${SUBMIT}  //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]

*** Keywords ***

Step 5 - Acess SEARCH DIRETORIA

  Wait Until Element Is Visible    locator=${SEARCH_DIRETORIA_TXT}
  Click Element                    locator=${SEARCH_DIRETORIA_TXT}
  Clear Element Text               locator=${CLEAR}
  Input Text                       locator=${CLEAR}                      text=IPANEMA     
  Click Element    locator=${SUBMIT}
    

    
  