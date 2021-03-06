# README for Register Your Kid

This is a tool for an education center to use for parents to sign their kids up for art classes. Specifically, I made it with hopes that the Sitar Arts Center in my neighborhood of Adams Morgan in DC, a non-profit center for art classes for kids and families of all economic backgrounds, would be able to use it in real life because currently they only have paper sign-up, but the programs department tells me that most families don't have printers and would do well to be able to sign up online. I'd also feel good knowing I saved some trees.

## How this app will work for a user

The user (parent) goes to the root path and is prompted to log in or sign up. They should add some kids to later sign them up for classes.

They are given a list of their kids and a dropdown menu to pick a class for each individual kid. They can also see lists of courses, other kids and parents in the school, and teachers with bios.

They can view their profile page at any time that gives kid and course details.

## My Workflow on this:

12.17.18
Notes while setting this up so far -
I need models for classes, kids, parents, and teachers:
* Teachers have many classes. Teachers have many parents through students.
* {Kids belong to parents and belong to teachers.} Do I need a kid model? I might not.
* Parents have many classes, and have many Teachers through classes.
* Courses belong to teachers, and belong to parents.
* So, the many-to-many relationship in this project is Teachers and Parents, through classes. The join table will include another attribute besides foreign keys: (age group, start time)
(Changed later so the join table is the course table)

Migrations to write
* kids have a name and an age and belong_to parents, foreign key for parent_id
* Parents have a name
* Teachers have a name
* Courses have a title, age group, start_time, foreign keys for teachers and parents (then can parents have many classes?)

12.23.18
Got the login and sessions working, nested forms to associate kids with the parent users on login.

To do:
* Let parents sign their kids up for classes through a nested route. They get a form with checkboxes to pick which kids are in the classes, and then the course is submitted. If this is too complicated with extra nested forms, then just let the parent sign up for classes in general, and view them in /parent/id/courses/show. The classes need to be associated with parents through parent_id attributes.
* Create some teacher seeds and have them associated with classes through teacher_id attributes.
* Display the teachers that the parents have on show page as well, through the classes, also in /parent/id/teacher/show with a profile about the teacher
* Ideally, the parent can log in and then see a schedule of classes coming up. it would indeed be cool to also see which kids are in which classes. I think I need another nested form for that.
* May also want to make a partial for some of the forms

12.24.18 to do:

* Kids need to be updated to have a course_id. After browsing courses, on the show page for courses there's a form. The form is for kids. It lets you check the box next to the kid you want in that course then updates the kid.
alternate: there's just one form in kids to update the kid, where courses are shown in a dropdown or checkboxes to add course_id to kids.
* Display the teachers that the parents have on show page as well, through the classes, also in /parent/id/teacher/show with a profile about the teacher
* make it so parents can log in and go to /parents/id/courses and see an upcoming schedule


12.18.18 notes after creating migrations and models and controllers:

* make resource routes for the form to sign up for a class, the parent signs in and then sees the course index and goes to the page of the course and fills in the form. Need nested resources because the session assumes the parent already - can populate the kids they have in the form?

12.21.18

* Make a logged_in? method to know if a user is logged in before showing something

* Parent logs in, is directed to their profile page, has a chance to create a kid, then add classes, then log out

2.5.19
I added JavaScript functionality using AJAX and JSON to dynamically present form submissions on the pages - check out the new course page where a user can make a new course. There are other clickable DOM objects that allow the user to browse through things quickly.

3.6.19
I added some comments, changed the styling, and added more seeds. The center I created this project for is looking at it to decide if they could use something like this.

I messed around with the authentication and validations here. It was hard because the kid when first created at sign up can end up having no age, and that's not ideal. I needed to figure out how to have the required age field. I just made the built in attributes in the form (the default values) set to "" and I used activerecord validations to make sure the correct fields were entered.

I need to work on making the way I identify the user - right now it's one of  current_user, session[:id] and parent.id - it needs to be one consistent thing across all views. probably current_user is best.

I also added a nav bar.


## Ruby version

2.3.3


## Deployment instructions

How to run this on your machine:
* clone the repo to your machine
* cd into the directory
* run rails s to start the server
* navigate your browser to http://localhost:3000

## License

This is under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## More I'd like to do here
Create more dynamic AJAX-powered functionality, such as clicking through all the kids or courses to choose from using a "next" button on the show pages.
I want to translate the JSON responses into JavaScript Model Objects using either ES6 class or constructor syntax.
I'd like to create an admin login so someone may actually use this in an education center. Kids should be able to have more than one class as well.
