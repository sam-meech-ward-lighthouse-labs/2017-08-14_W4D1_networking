# Networking

## What is networking?

How two computers communicate with eachother.

## HTTP

HyperText Transfer Protocol

HTML

css, json, ruby, xml, java, images,  pretty much anything

Protocol: is a set of rules to follow.

Client: Makes a request to a host computer.
Host: Returns a response to the client.

* HTTPS
* TCP / UDP
* FTP: File transfer protocol
* SMTP:  Simple Mail Transfer Protocol

### HTTP Requst

* URL: youtube.com, example.com, http://ios-compass.lighthouselabs.ca/days/w4d1
* Verbs / Methods: FETCH, POST, PUT, GET, DELETE,

facebook.com in a web browser.
GET reqeust

We can use `curl` to make a http reqeuest in terminal

### HTTP Response

* Status Codes:  404 not found, 418 I'm a teapot, 401 forbidden,

* 4XX - Bad, you did something wrong.
* 5XX - Bad, Server error. The server did something wrong.
* 2XX - 🤗, Good, everything is as we wanted.
* 3XX - Redirections.
* 1XX - informational.
* 6XX - They don't exist.

* Body

## JSON

JavaScript Object Notation

* Arrays `[1, 2, 3, 4]`
* Objects `{"key": "value", "name": "sam"}` (Dictionary, NSDictionary)
* Numbers 1, 3.3
* Strings "anything inside double quotes"

## APIs

Application Programming Interface

Anything that is exposed publicly, that we can use to interact with other peices of code.

Web APIs:

* The urls and methods that we can use to request and send data.
* defined by the host and used by the client.

https://github.com/lighthouse-labs
vs
https://api.github.com/users/lighthouse-labs/repos

* Some APIs are completely public, like githubs.
* Others will make you sign up for an API key.
* Other APIs that will make you use a thing called OAuth.

## NSURLSession

## Multithreading

Varninder - show up 30 minutes late, Make me tea 15 minutes, Dry Cleaning 40 minutes, Buy coconut 15 minutes, opening 10 minutes

Just shy of 2 hours until I get my coconut.

Varninder - Show up 30 minutes late
👔 - Do my dry cleaning 60 minutes
Linh - Make me tea 15 minutes
Jae - buy coconut 15 minutes
Martin - open my coconut 10 minutes

I get my coconut in 25 minutes, on the very important condition that martin waits for Jae.


The default thread on the iPhone app, has to update UI.

YOU MUST NOT UPDATE THE UI FROM A BACKGROUND   QUEUE!!! EVER!!!!

## Networking takes a while

Sam: How long does a network request take?
👔: Not Sure!
