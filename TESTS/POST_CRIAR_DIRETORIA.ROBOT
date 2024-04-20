*** Settings ***
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/CRIAR_DIRETORIA.RESOURCE

*** Test Cases ***
CT01- ACESSAR Academy CRIAR DIRETORIA 
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess session DIRETORIA
  Step 5 - Create New DIRETORIA


