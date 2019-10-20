slava = User.create(
  name: 'slava',
  email: 'slava@gmail.com',
  password: '12345678',
  avatar: ''
)

slava_job1 = slava.jobs.create(
  name: 'slava job 1',
  user_id: slava.id)

slava_job1_part1 = Part.create(
  name: 'slava job 1 part 1',
  user_id: slava.id,
  job_id: slava_job1.id
)

slava_job1_part1_task1 = Task.create(
  name: 'slava job 1 part 1 task 1',
  user_id: slava.id,
  job_id: slava_job1.id,
  part_id: slava_job1_part1.id
)

Comment.create(
  text: 'slava job 1 part 1 task 1 comment 1',
  user_id: slava.id,
  job_id: slava_job1.id,
  part_id: slava_job1_part1.id,
  task_id: slava_job1_part1_task1.id
)

slava_job2 = slava.jobs.create(
  name: 'slava job 2',
  user_id: slava.id)

slava_job2_part1 = Part.create(
  name: 'slava job 2 part 1',
  user_id: slava.id,
  job_id: slava_job2.id
)

slava_job2_part1_task1 = Task.create(
  name: 'slava job 2 part 1 task 1',
  user_id: slava.id,
  job_id: slava_job2.id,
  part_id: slava_job2_part1.id
)

Comment.create(
  text: 'slava job 2 part 1 task 1 comment 1',
  user_id: slava.id,
  job_id: slava_job2.id,
  part_id: slava_job2_part1.id,
  task_id: slava_job2_part1_task1.id
)

sofia = User.create(
  name: 'sofia',
  email: 'sofia@gmail.com',
  password: '12345678', avatar: '')

sofia_job1 = sofia.jobs.create(
  name: 'sofia job 1',
  user_id: sofia.id)

sofia_job1_part1 = Part.create(
  name: 'sofia job 1 part 1',
  user_id: sofia.id,
  job_id: sofia_job1.id
)

sofia_job1_part1_task1 = Task.create(
  name: 'sofia job 1 part 1 task 1',
  user_id: sofia.id,
  job_id: sofia_job1.id,
  part_id: sofia_job1_part1.id
)

Comment.create(
  text: 'sofia job 1 part 1 task 1 comment 1',
  user_id: sofia.id,
  job_id: sofia_job1.id,
  part_id: sofia_job1_part1.id,
  task_id: sofia_job1_part1_task1.id
)

sofia_job2 = sofia.jobs.create(
  name: 'sofia job 2',
  user_id: sofia.id)

sofia_job2_part1 = Part.create(
  name: 'sofia job 2 part 1',
  user_id: sofia.id,
  job_id: sofia_job2.id
)

sofia_job2_part1_task1 = Task.create(
  name: 'sofia job 2 part 1 task 1',
  user_id: sofia.id,
  job_id: sofia_job2.id,
  part_id: sofia_job2_part1.id
)

Comment.create(
  text: 'sofia job 2 part 1 task 1 comment 1',
  user_id: sofia.id,
  job_id: sofia_job2.id,
  part_id: sofia_job2_part1.id,
  task_id: sofia_job2_part1_task1.id
)

oksi  = User.create(name: 'oksi', email: 'oksi@gmail.com', password: '12345678', avatar: '' )
