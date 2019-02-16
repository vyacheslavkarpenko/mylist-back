# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(email: '1@1')

u1j1 = Job.create(
  name: 'Job 1',
  user_id: u1.id
)

u1j1p1 = Part.create(
  name: 'Job 1 part 1',
  user_id: u1.id,
  job_id: u1j1.id
)

u1j1p1t1 = Task.create(
  name: 'Job 1 part 1 task 1',
  user_id: u1.id,
  job_id: u1j1.id,
  part_id: u1j1p1.id
)

u1j1p1t1c1 = Comment.create(
  name: 'Job 1 part 1 task 1 comment 1',
  user_id: u1.id,
  job_id: u1j1.id,
  part_id: u1j1p1.id,
  task_id: u1j1p1t1
)

#rails db:drop db:create db:migrate db:seed 
