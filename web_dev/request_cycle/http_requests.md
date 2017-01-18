# (Release 0: What are some common HTTP status codes?)

HTTP status codes are three digits: ABC
A digit:
  * 1 --> Informational message
  * 2 --> OK response
  * 3 --> Redirection
  * 4 --> Error
  * 5 --> Error

Common status codes:
* 200: OK
* 404: Requested Source Not Found
* 403: Requested Source Forbidden
* 500: Internal Server Error
* 503: Service Unavailable
* 504: Gateway timeout

#(What is the difference between a GET request and a POST request? When might each be used?)

Get Request: All required data is in the URL
Post Request: Supplies additional data from the user's browser to the server

Get requests are used when searching the web for public news and information

Post request are used for posting data and information or attaching files. This is more secure and not saved in the browser history.

#(What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?))

A cookie is a small piece of data that the server sends to the browser that the browser can send back to the server the next time the browser makes the request. This allows the server to keep a record of session management (ex: username/passwords), personalization and tracking user behavior.
