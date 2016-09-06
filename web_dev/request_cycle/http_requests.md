# Release 0: HTTP Requests 

## 1. What are some common HTTP status codes?

### 2xx Success codes
* **200 (OK)** - the request has succeeded

### 4xx Client Error codes:
* **400 (Bad Request)** - whenever the client sents a request the server is unable to understand this message pops up (usually indicating that there's something unstable on the client side)
*  **401 (UNAUTHORIZED)** - This error happens when a website visitor tries to access a restricted web page but isn’t authorized to do so, usually because of a failed login attempt
*  **404 (NOT FOUND)** - A 404 error happens when you try to access a resource on a web server (usually a web page) that doesn’t exist. The browser returns a 404 HTML page when the server doesn’t find anything on the requested location. There are three main scenarios that can result in a 404 Not Found page. Either there’s a broken link, or the visitor mistyped the URL, or the permalink structure of the site has been changed and the incoming links point to pages that were moved to different locations - the webmaster has moved the requested page somewhere else (or deleted it)

### Server Error codes:
* **500 (INTERNAL SERVER ERROR)** - a general-purpose error message for when a web server encounters some form of internal error. For example, the web server could be overloaded and therefore unable to handle requests properly
* **503 (SERVICE TEMPORARILY UNAVAILABLE)** - this message appears any time there’s a temporary overload on the server, or when it’s going through a scheduled maintenance. The 503 error code means that the web server is currently not available. This is usually a temporary condition that will be resolved after some delay


## 2. What is the difference between a GET request and a POST request? When might each be used?
### The GET and POST are 2 common methods for sending HTTP requests:
* **GET** - Used for most requests to retrieve data. Browser uses the GET method whenever it requests a new web page, CSS file, image, and so on. GET is used when we want to "get" something from the server.
* **POST** - Used to submit data to be processed to a specified resource. Used frequently with web forms to send data to store in a database. POST is used when sending data that will store, delete or update information from a database.

##3. What is a cookie? How does it relate to HTTP requests?
A cookie is a small text file that is stored by a browser on the user’s machine. Cookies are plain text; they contain no executable code. A web page or server instructs a browser to store this information and then send it back with each subsequent request based on a set of rules. Web servers can then use this information to identify individual users - it is used to know if two requests came from the same browser allowing to keep a user logged-in, for example. They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers.

Cookies are passed as HTTP headers, both in the request (client -> server), and in the response (server -> client).
