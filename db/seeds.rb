# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(name: '남현우', major:'경영')
Student.create(name: '이호연', major:'컴퓨터과학')
Student.create(name: '이연', major:'컴퓨터과학')

Working.create(working_id: 1, team: [1,2,3], lesson_id: 1)
Working.create(working_id: 2, team: [1,2], lesson_id: 2)
Working.create(working_id: 3, team: [4,5,6], lesson_id: 1)

Lesson.create(lesson_id: 1, professor_id: 1, subject: '수학')
Lesson.create(lesson_id: 2, professor_id: 1, subject: '전공')

Meeting.create(meeting_id: 1, working_id: 1, day: DateTime.new(2015,8,23, 13 ,30,0),location:'서울대')
#Meeting.create(meeting_id: 2, working_id: 1, day: DateTime.new(2015,8,24, 16 ,30,0),location:'연세대')

Homework.create(homework_id:1, meeting_id:1, working_id:1, member_id:1, content:[{:txt => '숙제 1'},{:txt => '숙제 2'}])
#Homework.create(homework_id:2, meeting_id:1, working_id:1, member_id:2, content:[{:txt => '숙제 3'},{:txt => '숙제 4'}])
#Homework.create(homework_id:3, meeting_id:2, working_id:1, member_id:3, content:[{:txt => '숙제 6'},{:txt => '숙제 5'}])
#Homework.create(homework_id:4, meeting_id:2, working_id:1, member_id:1, content:[{:txt => '숙제 7'},{:txt => '숙제 8'}])

Professor.create(professor_id:1)