# Security Example App

This "Insecure Blog" contains terrible security
mistakes. Fix them and learn!  Write your answers here
in the README.md and hand the exercise in as a pull request.

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
check if passwords are weak.  But let's ignore the encryption
of the passwords for now.

Write an integration test that tries to 
create a user with password '12345678'.

This should fail.

Use the `pwned` gem to check passwords before
they are stored.

Now all tests should be green.

See https://backend-development.github.io/security.html#slide-13

### 4. Cross Site Scripting and Content Security Policy

This app is vunerable to XSS.  Let's not fix this by
sanitizing the input and/or escaping the output, but let's
use a new method: Create a CSP for your app.  Try out different versions.

But fist: 

1. insert some article with a `<script>` tag in the description.
2. find the inline style (flex) and inline script (hover over circular button) in `/articles`


WARNING: After changing the file `config/initializers/content_security_policy.rb`
you need to restart the webserver!


Questions:

1. Version:

which settings are need to get `bin/webpack-dev-server` to work?


2. Version:

try to forbid all `unsafe-inline` script. 
* which setting do you need? 
* does the XSS still work?  
* how about the inline style and inline script?


3. Version:

try to use `nonce` to get the (good) inline script to work again.

which settings to you need in rails?

### What else should you do?

Which other security problems can you spot, and how can you fix them?
Add your list right here:


