# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

task1 = Task.create(
    title: 'Example Task 1',
    text: 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum',
    created_at: Date.today-10,
    updated_at: Date.today-5)
task2 = Task.create(
    title: 'Example Task 2',
    text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. ',
    created_at: Date.today-4,
    updated_at: Date.today-3)

Comment.create(
    task_id: task1.id,
    content: 'Wow amazing!',
    created_at: Date.today-6,
    updated_at: Date.today-3)
Comment.create(
    task_id: task1.id,
    content: 'Mah',
    created_at: Date.today-2,
    updated_at: Date.today-2)
Comment.create(
    task_id: task2.id,
    content: 'First lol',
    created_at: Date.today-4,
    updated_at: Date.today-3)
Comment.create(
    task_id: task2.id,
    content: 'Hope you write more',
    created_at: Date.today-2,
    updated_at: Date.today-1)
Comment.create(
    task_id: task2.id,
    content: 'Nice one!',
    created_at: Date.today-1,
    updated_at: Date.today-1)
