# README

This is a tool for an education center to use for parents to sign their kids up for art classes. Specifically, I made it with hopes that the Sitar Arts Center in my neighborhood of Adams Morgan in DC, a non-profit center for art classes for kids and families of all economic backgrounds, would be able to use it in real life because currently they only have paper sign-up, but the programs department tells me that most families don't have printers and would do well to be able to sign up online. I'd also feel good knowing I saved some trees.

12.17.18
Notes while setting this up so far -
I need models for classes, kids, parents, and teachers:
* Teachers have many students and have many classes. Teachers have many parents through students.
* Kids have many classes and belong to parents and belong to teachers.
* Parents have many classes and many kids, and have many Teachers through classes.
* Classes belong to teachers, belong to kids, and belong to parents. (is this weird?)
* So, the many-to-many relationship in this project is Teachers and Parents, through classes. The join table will include another attribute besides foreign keys: (working on this)

Migrations to write
* kids have a name and an age and a foreign key for parent_id
* Parents have a name and foreign key for their kid_id and class_id.


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
