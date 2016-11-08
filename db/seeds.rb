# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Color.create(
    name: 'light-red',
    rgb: '251,111,111',
    hex: '#fb6f6f'
)

Color.create(
    name: 'salmon-red',
    rgb: '236,155,120',
    hex: '#ec9b78'
)

Color.create(
    name: 'pale-yellow',
    rgb: '231,228,153',
    hex: '#e7e499'
)

Color.create(
    name: 'light-green',
    rgb: '194,236,134',
    hex: '#c2ec86'
)

Color.create(
    name: 'light-blue',
    rgb: '149,197,251',
    hex: '#95c5fb'
)

task1 = Task.create(
    title: 'Example Task 1',
    text: 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum',
    created_at: Date.today-10,
    updated_at: Date.today-5,
    colors_id: 1)
task2 = Task.create(
    title: 'Example Task 2',
    text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. ',
    created_at: Date.today-4,
    updated_at: Date.today-3,
    colors_id: 5)

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

User.create(
    surname: 'Mustermann',
    givenname: 'Max',
    email: 'max.mustermann@online.de',
    password: 'Start123!',
    password_confirmation: 'Start123!')

