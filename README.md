# README

This is a tool for an education center to use for parents to sign their kids up for art classes. Specifically, I made it with hopes that the Sitar Arts Center in my neighborhood of Adams Morgan in DC, a non-profit center for art classes for kids and families of all economic backgrounds, would be able to use it in real life because currently they only have paper sign-up, but the programs department tells me that most families don't have printers and would do well to be able to sign up online. I'd also feel good knowing I saved some trees.

12.17.18
Notes while setting this up so far -
I need models for classes, kids, parents, and teachers:
* Teachers have many classes. Teachers have many parents through students.
* {Kids belong to parents and belong to teachers.} Do I need a kid model? I might not.
* Parents have many classes, and have many Teachers through classes.
* Classes belong to teachers, and belong to parents.
* So, the many-to-many relationship in this project is Teachers and Parents, through classes. The join table will include another attribute besides foreign keys: (age group, start time)

Migrations to write
* {kids have a name and an age and a foreign key for parent_id, teacher_id} No kid model? If so, just make it so kids can belong_to parents so parents can have_many kids? Only for that function?
* Parents have a name, a child_name, a class_id (so they can have many classes)
* Teachers have a name
* classes have a title, age group, start_time, foreign keys for teachers and parents (then can parents have many classes?)


How this app will work for a user:

The user (parent) goes to '/welcome' and is prompted to log in. (They might be able to see a list of classes without logging in) they're taken to '/users'

The user signs up or logs in 'users/1'. They are given an index of all class choices and their times, age groups '/users/1/classes'.

The user can click a link that takes them to the show page for the class. '/classes/1' and then a link from there to sign up for the class '/users/1/classes/2' - the form here will allow them to enter multiple kids' names

They can view their profile page that contains classes and the teachers '/users/1/classes', the teachers have links to their pages with their classes that they teach '/teachers/1'


Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
