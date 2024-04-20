*** Settings ***
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/criar_novo_usuario.resource
Resource  ../RESOURCES/criar_novo_usuario_error.resource

*** Test Cases ***


CT01-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name plus 100
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile
  Step 10 - verify User Full Name plus 100 

CT02-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name whith numbers
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile
  Step 10 - verify User Full Name whith numbers


CT03-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name whith special characters
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile
  Step 10 - verify User Full Name whith special characters


CT04-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Blank name 
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile
  Step 10 - verify User Blank name


CT05-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User errror lastName
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password
  Step 9 - Create Acess Profile
  Step 10 - verify User error lastName