![CI logo](https://codeinstitute.s3.amazonaws.com/fullstack/ci_logo_small.png)

Welcome Benjamin144,

This is the Code Institute student template for Gitpod. We have preinstalled all of the tools you need to get started. You can safely delete this README.md file, or change it for your own project. Please do read it at least once, though! It contains some important information about Gitpod and the extensions we use.

## Gitpod Reminders

To run a frontend (HTML, CSS, Javascript only) application in Gitpod, in the terminal, type:

`python3 -m http.server`

A blue button should appear to click: *Make Public*,

Another blue button should appear to click: *Open Browser*.

To run a backend Python file, type `python3 app.py`, if your Python file is named `app.py` of course.

A blue button should appear to click: *Make Public*,

Another blue button should appear to click: *Open Browser*.

In Gitpod you have superuser security privileges by default. Therefore you do not need to use the `sudo` (superuser do) command in the bash terminal in any of the lessons.

## Updates Since The Instructional Video

We continually tweak and adjust this template to help give you the best experience. Here is the version history:

**October 21 2020:** Versions of the HTMLHint, Prettier, Bootstrap4 CDN and Auto Close extensions updated. The Python extension needs to stay the same version for now.

**October 08 2020:** Additional large Gitpod files (`core.mongo*` and `core.python*`) are now hidden in the Explorer, and have been added to the `.gitignore` by default.

**September 22 2020:** Gitpod occasionally creates large `core.Microsoft` files. These are now hidden in the Explorer. A `.gitignore` file has been created to make sure these files will not be committed, along with other common files.

**April 16 2020:** The template now automatically installs MySQL instead of relying on the Gitpod MySQL image. The message about a Python linter not being installed has been dealt with, and the set-up files are now hidden in the Gitpod file explorer.

**April 13 2020:** Added the _Prettier_ code beautifier extension instead of the code formatter built-in to Gitpod.

**February 2020:** The initialisation files now _do not_ auto-delete. They will remain in your project. You can safely ignore them. They just make sure that your workspace is configured correctly each time you open it. It will also prevent the Gitpod configuration popup from appearing.

**December 2019:** Added Eventyret's Bootstrap 4 extension. Type `!bscdn` in a HTML file to add the Bootstrap boilerplate. Check out the <a href="https://github.com/Eventyret/vscode-bcdn" target="_blank">README.md file at the official repo</a> for more options.

--------

Happy coding!

## MySQL Introduction
A free, open source relational database management system, MySQL's free availability and it's powerful features have resulted in it's widespread use as a database for websites, 
The MySQL server runs as a service on most operating systems and can be used from the command line, through graphical clients, or directly from your own applications

## MySQL on CLI
The MySQL server running on a command line terminal, Provides access to MySQL via the command line in an IDE, Use the command line to run scripts; create, query, and update databases

## Running Scripts
A series of sql commands in a text file, Allows us to script database operations, such as creating, populating, and updating databases, Put database commands in a .sql file, and run them using the mysql command line client

## The MySQL Command Line
A command line interface for MySQL, allows you to enter commands to do amongst other things; changing databases, showing tables and viewing table properties, eusenter your command at the mysql> prompt
![CI logo](https://codeinstitute.s3.amazonaws.com/fullstack/ci_logo_small.png)

Welcome Benjamin144,

This is the Code Institute student template for Gitpod. We have preinstalled all of the tools you need to get started. You can safely delete this README.md file, or change it for your own project. Please do read it at least once, though! It contains some important information about Gitpod and the extensions we use.

## Gitpod Reminders

To run a frontend (HTML, CSS, Javascript only) application in Gitpod, in the terminal, type:

`python3 -m http.server`

A blue button should appear to click: *Make Public*,

Another blue button should appear to click: *Open Browser*.

To run a backend Python file, type `python3 app.py`, if your Python file is named `app.py` of course.

A blue button should appear to click: *Make Public*,

Another blue button should appear to click: *Open Browser*.

In Gitpod you have superuser security privileges by default. Therefore you do not need to use the `sudo` (superuser do) command in the bash terminal in any of the lessons.

## Updates Since The Instructional Video

We continually tweak and adjust this template to help give you the best experience. Here is the version history:

**October 21 2020:** Versions of the HTMLHint, Prettier, Bootstrap4 CDN and Auto Close extensions updated. The Python extension needs to stay the same version for now.

**October 08 2020:** Additional large Gitpod files (`core.mongo*` and `core.python*`) are now hidden in the Explorer, and have been added to the `.gitignore` by default.

**September 22 2020:** Gitpod occasionally creates large `core.Microsoft` files. These are now hidden in the Explorer. A `.gitignore` file has been created to make sure these files will not be committed, along with other common files.

**April 16 2020:** The template now automatically installs MySQL instead of relying on the Gitpod MySQL image. The message about a Python linter not being installed has been dealt with, and the set-up files are now hidden in the Gitpod file explorer.

**April 13 2020:** Added the _Prettier_ code beautifier extension instead of the code formatter built-in to Gitpod.

**February 2020:** The initialisation files now _do not_ auto-delete. They will remain in your project. You can safely ignore them. They just make sure that your workspace is configured correctly each time you open it. It will also prevent the Gitpod configuration popup from appearing.

**December 2019:** Added Eventyret's Bootstrap 4 extension. Type `!bscdn` in a HTML file to add the Bootstrap boilerplate. Check out the <a href="https://github.com/Eventyret/vscode-bcdn" target="_blank">README.md file at the official repo</a> for more options.

--------

Happy coding!

## MySQL Introduction
A free, open source relational database management system, MySQL's free availability and it's powerful features have resulted in it's widespread use as a database for websites, 
The MySQL server runs as a service on most operating systems and can be used from the command line, through graphical clients, or directly from your own applications

## MySQL on CLI
The MySQL server running on a command line terminal, Provides access to MySQL via the command line in an IDE, Use the command line to run scripts; create, query, and update databases

## Running Scripts
A series of sql commands in a text file, Allows us to script database operations, such as creating, populating, and updating databases, Put database commands in a .sql file, and run them using the mysql command line client

## The MySQL Command Line
A command line interface for MySQL, allows you to enter commands to do amongst other things; changing databases, showing tables and viewing table properties, eusenter your command at the mysql> prompt

## Querying the database
A way of reading or writing database contents from the command line, that allows us to manipulate database contents directly from within the mysql client app, Run the client app, connect to the mysql server, and issue commands at the 'mysql' prompt

## SQL In Action 
Introduction

## SELECT
A statement for querying data from a relational database. Retrieves data from a specified list of columns in a table. 
SELECT column1, column2, ...
        FROM table_name;

## The Where Clause
A command that allows the results of a SQL statement to be filtered, it restricts the scope of a SQL statement to only the rows that match the where clause, 
In SELECT, UPDATE and DELETE statements, add a where clause that contains a boolean expression. Only rows where true are affected

## JOIN
A way of linking multiple tables together so that a SELECT can pull data from all of them. Identifies the columns that must match in order for two rows in different tables to be considered "related"
In the FROM part of a SELECT statement, after naming a table to pull data from, then use the JOIN and ON keywords to link to another table

## The ORDER BY Clause
An SQL command to sort tables that sorts ascending or descending. We have to use the ORDER BY command.

## The COUNT Function
This is an aggregate function that returns the number of rows in a query result, or group we use the count(column) or count(*) for this to work.