*** Settings ***
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/CRIAR_DIRETORIA.RESOURCE
Resource  ../RESOURCES/ALTERAR_DIRETORIA.RESOURCE

*** Test Cases ***
CT01- ACESSAR Academy ALTERAR DIRETORIA 
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess session DIRETORIA
  Step 5 - Acess SEARCH DIRETORIA