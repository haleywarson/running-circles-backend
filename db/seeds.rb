UserCircle.destroy_all
UserRun.destroy_all
User.destroy_all
Circle.destroy_all 
Run.destroy_all 

haley = User.create!(
    username: "haley",
    password: "haley123"
)

tim = User.create!(
    username: "tim",
    password: "tim123"
)

hattie = User.create!(
    username: "hattie",
    password: "hattie123"
)

colette = User.create!(
    username: "colette",
    password: "colette123"
)

college = Circle.create!(name: "College friends")
triathletes = Circle.create!(name: "Triathletes")
joggers = Circle.create!(name: "Joggers")

park_run = Run.create!(
    name: "Park run",
    location: "8801 M.L.K. Jr Blvd",
    date: "06-05-2021",
    time: "4:00 PM"
)

block_run = Run.create!(
    name: "Block run",
    location: "East 29th Place",
    date: "06-06-2021",
    time: "2:00 PM"
)

track_run = Run.create!(
    name: "Track run",
    location: "2000 Valentia St",
    date: "06-07-2021",
    time: "8:00 AM"
)

UserCircle.create!(
    user_id: haley.id,
    circle_id: joggers.id 
)

UserCircle.create!(
    user_id: haley.id,
    circle_id: college.id 
)

UserCircle.create!(
    user_id: tim.id,
    circle_id: college.id 
)

UserCircle.create!(
    user_id: hattie.id,
    circle_id: triathletes.id 
)

UserCircle.create!(
    user_id: hattie.id,
    circle_id: joggers.id 
)

UserCircle.create!(
    user_id: colette.id,
    circle_id: triathletes.id 
)

UserRun.create!(
    user_id: haley.id,
    run_id: park_run.id
)

UserRun.create!(
    user_id: tim.id,
    run_id: park_run.id
)

UserRun.create!(
    user_id: hattie.id,
    run_id: park_run.id
)

UserRun.create!(
    user_id: haley.id,
    run_id: block_run.id
)

UserRun.create!(
    user_id: haley.id,
    run_id: track_run.id
)
