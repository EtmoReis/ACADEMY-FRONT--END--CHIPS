*** Settings ***
Resource  ../RESOURCES/acessar_academy.resource
Resource  ../RESOURCES/criar_novo_usuario.resource
Resource  ../RESOURCES/criar_novo_usuario_error.resource
Resource    ../RESOURCES/criar_senha_usuario.resource

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
   Step 8 - Create New Password - 8 characters
  Step 9 - Create Acess Profile
  Step 10 - verify Password - 8 characters

 CT02-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password +12 characters
  Step 9 - Create Acess Profile
  Step 10 - verify Password +12 characters


CT03-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
   Step 8 - Create New Confirm Password diferent
  Step 9 - Create Acess Profile
  Step 10 - verify Confirm Password diferent



 CT04-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Confirm Password blank
  Step 9 - Create Acess Profile
  Step 10 - verify Confirm Password blank

 CT05-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password blank
  Step 9 - Create Acess Profile
  Step 10 - verify Password blank


CT06-Create and Registrer new User ********BUG No Uppercase******** 
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password no uppercase letters
  Step 9 - Create Acess Profile
  Step 10 - verify Password no uppercase letters


CT06-Create and Registrer new User ********BUG Uppercase********
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password uppercase letters
  Step 9 - Create Acess Profile
  Step 10 - verify Password uppercase letters

 CT07-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password only special characters 
  Step 9 - Create Acess Profile
  Step 10 - verify Password only special characters 



CT08-Create and Registrer new User
  Step 1 - Acess page Login Academy
  Step 2 - Print login and password and submit
  Step 3 - Verify URL after login
  Step 4 - Acess Users
  Step 5 - Acess Users
  Step 5 - Create New User Full Name
  Step 6 - Create New User MAIL
  Step 7 - Register a CPF
  Step 8 - Create New Password only numbers
  Step 9 - Create Acess Profile
  Step 10 - verify Password only numbers