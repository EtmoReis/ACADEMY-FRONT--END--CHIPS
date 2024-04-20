*** Settings ***
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/criar_novo_usuario.resource
Resource  ../RESOURCES/criar_novo_usuario_error.resource
Resource  ../RESOURCES/criar_email_usuario.resource
Resource  ../RESOURCES/criar_perfil_usuario.resource
*** Test Cases ***

CT01-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile blank
  Step 10 - verify Acess Users blank


 CT01-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile incorret
  Step 10 - verify Acess Users incorret

