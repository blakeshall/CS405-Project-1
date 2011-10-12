CS405 Project 1: Home Service Tracker
=====================================

Author: Blake Hall
------------------

Description:
------------

This is a web app that tracks multiple Services and their payments. Each
service is composed of a few attributes:
*  Name: The name of the Service
*  Description: Just a general description of the service (optional)
*  Amount: The amount due for the service
*  Reoccuring: Whether the service is one-time only or monthly
*  Active: If the service is active, used for reoccuring services (default: true)

These are up to the user to input, but a name and amount are required.
In addition there are three additional attributes for each service
created by Rails and the database: Service\_id which is used by the
database as the primary key, created\_at and updated\_at timestamps.

In addition to services it allso tracks payments for each services.
Payments are comprised of:
*  Amount: The amount paid for the service

This is the only thing the user has control of. The database handles the
other attributes:
*  Payment\_id: the unique key for each payment
*  Service\_id: Which service this payment belongs to
*  Created\_at and Updated\_at: timestamps generated and used by the
   database


