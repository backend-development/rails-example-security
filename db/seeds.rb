# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

one = User.create(
  name: 'Andrea',
  email: 'andrea@somewhere.at',
  password: '12345678',
  admin: false,
  homepage: 'https://elsewhere.at'
)


two = User.create(
  name: 'Brigitte',
  email: 'brigitte@somewhere.at',
  password: 'geheim!',
  admin: true,
  homepage: 'https://somewhere.at'
)

three = User.create(
  name: 'Chris',
  email: 'chris@somewhere.at',
  password: 'bierbierbier',
  admin: false,
  homepage: 'https://bier.at'
)

one.articles.create(
  title: 'HTTP Strict-Transport-Security',
  description: '<p>The HTTP Strict-Transport-Security response header (often abbreviated as HSTS) lets a web site tell browsers that it should only be accessed using HTTPS, instead of using HTTP.</p>'
)

two.articles.create(
  title: 'Cross-Origin Resource Sharing',
  description: '<p>Cross-Origin Resource Sharing (CORS) is a mechanism that uses additional HTTP headers to tell a browser to let a web application running at one origin (domain) have permission to access selected resources from a server at a different origin. A web application executes a cross-origin HTTP request when it requests a resource that has a different origin (domain, protocol, and port) than its own origin.</p><p>An example of a cross-origin request: The frontend JavaScript code for a web application served from http://domain-a.com uses XMLHttpRequest to make a request for http://api.domain-b.com/data.json.</p><p>For security reasons, browsers restrict cross-origin HTTP requests initiated from within scripts. For example, XMLHttpRequest and the Fetch API follow the same-origin policy. This means that a web application using those APIs can only request HTTP resources from the same origin the application was loaded from, unless the response from the other origin includes the right CORS headers.</p>'
)

three.articles.create(
  title: 'Content-Security-Policy',
  description: '<p>The HTTP Content-Security-Policy response header allows web site administrators to control resources the user agent is allowed to load for a given page. With a few exceptions, policies mostly involve specifying server origins and script endpoints. This helps guard against cross-site scripting attacks (XSS).</p>'
)

