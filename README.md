# README

This is a tool for an education center to use for parents to sign their kids up for art classes. Specifically, I made it with hopes that the Sitar Arts Center in my neighborhood of Adams Morgan in DC, a non-profit center for art classes for kids and families of all economic backgrounds, would be able to use it in real life because currently they only have paper sign-up, but the programs department tells me that most families don't have printers and would do well to be able to sign up online. I'd also feel good knowing I saved some trees.

12.17.18
Notes while setting this up so far -
I need models for classes, kids, parents, and teachers:
* Teachers have many classes. Teachers have many parents through students.
* {Kids belong to parents and belong to teachers.} Do I need a kid model? I might not.
* Parents have many classes, and have many Teachers through classes.
* Courses belong to teachers, and belong to parents.
* So, the many-to-many relationship in this project is Teachers and Parents, through classes. The join table will include another attribute besides foreign keys: (age group, start time)

Migrations to write
* kids have a name and an age and belong_to parents, foreign key for parent_id
* Parents have a name
* Teachers have a name
* Courses have a title, age group, start_time, foreign keys for teachers and parents (then can parents have many classes?)

12.23.18
Got the login and sessions working, nested forms to associate kids with the parent users.

To do:
* Let parents sign their kids up for classes through a nested route. They get a form with checkboxes to pick which kids are in the classes, and then the course is submitted. If this is too complicated with extra nested forms, then just let the parent sign up for classes in general, and view them in /parent/id/courses/show. The classes need to be associated with parents through parent_id attributes.
* Create some teacher seeds and have them associated with classes through teacher_id attributes.
* Display the teachers that the parents have on show page as well, through the classes, also in /parent/id/teacher/show with a profile about the teacher
* Ideally, the parent can log in and then see a schedule of classes coming up. it would indeed be cool to also see which kids are in which classes. I think I need another nested form for that.
* May also want to make a partial for some of the forms 


How this app will work for a user:

The user (parent) goes to '/welcome' and is prompted to log in. (They might be able to see a list of classes without logging in) they're taken to '/users'

The user signs up or logs in 'users/1'. They are given an index of all class choices and their times, age groups '/users/1/classes'.

The user can click a link that takes them to the show page for the class. '/classes/1' and then a link from there to sign up for the class '/users/1/classes/2' - the form here will allow them to enter multiple kids' names

They can view their profile page that contains classes and the teachers '/users/1/classes', the teachers have links to their pages with their classes that they teach '/teachers/1'

12.18.18 notes after creating migrations and models and controllers:

make resource routes for the landing page '/welcome' - this will be a view in parent, who is the user.

make resource routes for the form to sign up for a class, the parent signs in and then sees the course index and goes to the page of the course and fills in the form. Need nested resources because the session assumes the parent already - can populate the kids they have in the form?

12.21.18

Make a logged_in? method to know if a user is logged in before showing something

Parent logs in, is directed to their profile page, has a chance to create a kid, then add classes, then log out


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
