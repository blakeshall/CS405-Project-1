## CS405 Project 1: Home Service Tracker

#### Author: Blake Hall

###Description:

####Technical Details

This app is built in Ruby on Rails using the sqlite3 and pg gem for
database communication. In developement I used sqlite3 and then postgres
for production do to the hosting requirements. It is password protected
with basic HTTP Authentication with the username: demo and the password:
cs405g.

####Overview

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

To access the app all one needs to do is vist the
[website](http://cs405.herokuapp.com).

The source code to the app is all on 
[GitHub](http://github.com/blakeshall/CS405-Project-1).To install the app 
ruby and rails must be installed. Then do the following:

Run bundle install to make sure all dependencies are available

    bundle install

Then start the Rails server locally

    rails server

The app will be available at the default
[localhost:3000](http://localhost:3000)

#### License and Originality
The code submitted herewith is an original work performed by me expressly
 in fulfillment of requirements associated with the Project 1 of the
class CS405, Fall semester 2011, possibly except the gems used and the
Rails framework itself.

Copyright (c) 2011 Blake Hall

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
