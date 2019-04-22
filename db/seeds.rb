u1  = User.create(
  name: 'slava1',
  email: 'slava@gmail.com',
  password: '12345678',
  avatar: '' )

j1 = u1.jobs.create(
  name: 'Job 1',
  user_id: u1.id
)

p1 = Part.create(
  name: 'Job 1 part 1',
  user_id: u1.id,
  job_id: j1.id
)

t1 = Task.create(
  name: 'Job 1 part 1 task 1',
  user_id: u1.id,
  job_id: j1.id,
  part_id: p1.id
)

Comment.create(
  text: 'Job 1 part 1 task 1 comment 1',
  user_id: u1.id,
  job_id: j1.id,
  part_id: p1.id,
  task_id: t1.id
)
#rdr
