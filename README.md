# Security Example App

This "Insecure Blog" contains terrible security
mistakes. Fix them and learn!

## 1. Test for Password

This app displays the passwords of all users on
`http://localhost:3000/users`.

Write a test for this security bug.

Then fix it.

Now all tests should be green.

See https://backend-development.github.io/security.html#slide-4

## 2. Injection

The Search field for users is open to SQL injection.
Use it to find out which users have admin rights.

Write a test for this security bug.

Then fix it.

Now all tests should be green.

See https://backend-development.github.io/security.html#slide-6

## 3. Authentication

This app does not encrypt passwords and does not
check if passwords are weak.

Write an integration test that tries to 
create a user with password '12345678'.

This should fail.

Use the `pwned` gem to check passwords before
they are stored.

Now all tests should be green.

See https://backend-development.github.io/security.html#slide-13


