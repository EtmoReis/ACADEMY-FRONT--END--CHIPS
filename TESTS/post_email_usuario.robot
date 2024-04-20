*** Settings ***
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/criar_novo_usuario.resource
Resource  ../RESOURCES/criar_novo_usuario_error.resource
Resource  ../RESOURCES/criar_email_usuario.resource
*** Test Cases ***


CT01-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User Email with wrong domain
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile
  Step 10 - verify New User Email with wrong domain


CT02-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User Email with space domain
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile
  Step 10 - verify New User Email with space domain


CT03-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User Email with space blank
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile
  Step 10 - verify New User Email with space blank



CT04-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User Already registered email
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile
  Step 10 - verify New User Already registered email