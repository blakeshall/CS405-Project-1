## CS405 Project 1: Home Service Tracker

#### Author: Blake Hall

###Description:

This is a web app that tracks multiple Services and their payments. Each
service is composed of a few attributes:

-  Name: The name of the Service
-  Description: Just a general description of the service (optional)
-  Amount: The amount due for the service
-  Reoccuring: Whether the service is one-time only or monthly
-  Active: If the service is active, used for reoccuring services (default: true)

These are up to the user to input, but a name and amount are required.
In addition there are three additional attributes for each service
created by Rails and the database: Service\_id which is used by the
database as the primary key, created\_at and updated\_at timestamps.

In addition to services it allso tracks payments for each services.
Payments are comprised of:

-  Amount: The amount paid for the service

This is the only thing the user has control of. The database handles the
other attributes:

-  Payment\_id: the unique key for each payment
-  Service\_id: Which service this payment belongs to
-  Created\_at and Updated\_at: timestamps generated and used by the
   database

The app provides validation so that no Service can be created without a
name or amount and a Payment cannot be created without an amount.

The app also provides the user with a number of Reports on payments a
services. In the Reports section the user can find three main reports:

#### Unpaid

All active services that are unpaid. It gives each service name and the
amount owed followed by the total amount owed.

#### Year to Date

Lists all the payments paid this year thus far. It includes the service
paid, the amount, and when the payment was made. It also gives a total
amount of all the payments.

#### By Month

Allows the user to search for payments in a specific month. "How much
did I spend in October?". The format is much like the Year to Date
report with the services paid, amounts, specific dates, and a total for
that month.

###Access and Installation

To access the app all one needs to do is vist the website (Currently not
live).

To install the app ruby and rails must be installed. Then do the
following:

Run bundle install to make sure all dependencies are available

    bundle install

Then start the Rails server locally

    rails server

The app will be available at the default
[localhost:3000](http://localhost:3000)
