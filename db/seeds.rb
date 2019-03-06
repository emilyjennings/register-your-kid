# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Teacher.create!(name: "Ms. Mac", bio: "Ms. Mac is a freelance artist who loves teaching art and music to young children.")
Teacher.create!(name: "Sylvia", bio: "Sylvia moved to the United States in the 80s to become a performer and has taught in DC for 10 years. She is also the director of the center.")
Teacher.create!(name: "Marco", bio: "Marco doesn't really teach but he is a real person who works at the center and I needed to fill out one more teacher to seed the database, so here he is.")
Teacher.create!(name: "Dumbledore", bio: "Having a background in wizardry, Albus Dumbledore now teaches kids to express tehir artistic selves using their wands.")
Teacher.create!(name: "Becky", bio: "Becky is passionate about childhood development and teaches using techniques exploring music and colors.")


Course.create!(title: "Infant Massage and Lullabies", start_time: "10AM Mondays", age_group: "0-3", description: "Infant Massage and Lullabies, while nurturing parent-child relationship and bond, teaches the benefits of massage for young infants. Rodrigo Montes, a certified infant massage therapist, will lead parents through routines of age appropriate massage techniques, coupled with an introduction to lullabies designed to sooth infants in their earliest stages. This class will equip parents with skills to use in and beyond the classroom.", teacher_id: 1)
Course.create!(title: "Early Childhood Music", start_time: "11AM Saturdays", age_group: "3-5", description: "Early Childhood Music classes offer the opportunity to engage children and adults in age appropriate singing, movement and rhythm instruments as children discover the creative energy intrinsic to the arts. Classes are designed to support children’s development as they learn to feel and keep a steady beat, find their singing voices and discover the joy of sharing music with others in their community. The repertoire includes both traditional and original songs, chants, stories, finger plays and nursery rhymes. Classes also provide parents and caregivers with a variety of ideas and strategies to continue the exploration beyond classes.", teacher_id: 2)
Course.create!(title: "Dance Basics", start_time: "10AM Saturdays", age_group: "5-7", description: "A fun, upbeat introduction to dance class drawing from the ballet, jazz and modern traditions. This structured class consists of a warm-up, stretch, across the floor combinations and center choreography. Establishes proper technique and alignment, builds dance vocabulary and encourages style, creativity and self-expression. This class, for children ages 4 and 5, is for students only without parents.", teacher_id: 3)
Course.create!(title: "Summer Arts Intensive", start_time: "Monday-Thursday 4:15pm-6:15pm", age_group: "14-18", description: "Students choose an intensive focus, and will work together with others enrolled towards a final performance project. The performance and the promotion of the performance will all be done by the students in the project. The student artists will decide what type of performances they want to have and how they will promote it. For example, the digital arts students and the studio arts students may work together to design posters or t-shirts about the performance. Students will meet 1-2 times a week to discuss ideas and progress of the project.", teacher_id: 2)
Course.create!(title: "Arts Afterschool", start_time: "After school weekdays", age_group: "10-15", description: "Sitar’s Spring 2019 semester is 12 weeks long and runs from January 28 to May 4, 2019 with student performances and an art exhibit May 6 to 10, 2019. Afterschool arts classes are open to students ages 6 to 18 who live in the District of Columbia. Tuition is determined on a sliding scale, based on household income. There are also a few spaces for aftercare for students in 1st to 7th grade.", teacher_id: 1)
Course.create!(title: "Flamenco 4 Kids!™ (Bilingual)", start_time: "11AM Thursdays", age_group: "5-6", description: "At any age Flamenco is a lot more than just dance. But for young children it can be a unique outlet for self-expression. Flamenco 4 Kids™ carefully balances discipline with endless opportunities for fun and character development. In this series your little ones will learn the art of flamenco through games, imaginative play, repetition, and ear training. Rhythm and dance are cleverly intertwined as children accompany traditional music from Andalucía by moving their bodies from head to toe.", teacher_id: 1)
Course.create!(title: "Digital Arts", start_time: "4PM Wednesdays", age_group: "12-17", description: "Students have the opportunity to create their own websites or lay down a beat for a song they’ve written in a brand new, state-of-the-art computer lab at Sitar Arts Center. In addition to classes like Music Production and Web Design, students can learn animation, video, and graphic design using skills from visual art and music to discover the world of multimedia.", teacher_id: 4)
Course.create!(title: "Wizardry: Not the Dark Arts (Bilingual)", start_time: "9AM Fridays", age_group: "all ages", description: "Students will learn to use their wands for art and social good through intention setting and proper spells.", teacher_id: 4)
Course.create!(title: "Sing and Sign", start_time: "4PM Tuesdays", age_group: "2-3", description: "Sing and Sign teams music and ASL signs with classic nursery rhymes, traditional American children’s repertoire, and seasonal songs reflecting the natural world. Books and puppets provide visuals to enhance the children’s understanding of the signs and enjoyment of the songs.", teacher_id: 5)
Course.create!(title: "Painting with Paint", start_time: "2PM Tuesdays", age_group: "5-12", description: "This is a course where kids learn how to paint with a really obvious art medium - none other than paint. What could be better?", teacher_id: 5)

Parent.create!(name: "Eddard", password: "password")
Parent.create!(name: "Aerys II", password: "password")
Parent.create!(name: "Tywin", password: "password")
Parent.create!(name: "Steffon", password: "password")

Kid.create!(name: "Robb", age: 10, parent_id: 1, course_id: 5)
Kid.create!(name: "Sansa", age: 17, parent_id: 1, course_id: 4)
Kid.create!(name: "Arya", age: 0, parent_id: 1, course_id: 1)
Kid.create!(name: "Bran", age: 2, parent_id: 1, course_id: 1)
Kid.create!(name: "Rickon", age: 3, parent_id: 1, course_id: 2)
Kid.create!(name: "Cersei", age: 9, parent_id: 3, course_id: 7)
Kid.create!(name: "Jaime", age: 11, parent_id: 3, course_id: 5)
Kid.create!(name: "Tyrion", age: 15, parent_id: 3, course_id: 4)
Kid.create!(name: "Daenerys", age: 17, parent_id: 2, course_id: 4)
Kid.create!(name: "Viserys", age: 0, parent_id: 2, course_id: 1)
Kid.create!(name: "Robert", age: 4, parent_id: 4, course_id: 2)
Kid.create!(name: "Stannis", age: 14, parent_id: 4, course_id: 7)
Kid.create!(name: "Renly", age: 8, parent_id: 4, course_id: 7)
Kid.create!(name: "Rhaegar", age: 2, parent_id: 2, course_id: 1)
