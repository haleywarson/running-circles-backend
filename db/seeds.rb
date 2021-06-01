UserCircle.destroy_all
UserRun.destroy_all
User.destroy_all
Circle.destroy_all 
Run.destroy_all 

haley = User.create(
    username: "haley",
    password: "haley123"
)

tim = User.create(
    username: "tim",
    password: "tim123"
)

hattie = User.create(
    username: "hattie",
    password: "hattie123"
)

colette = User.create(
    username: "colette",
    password: "colette123"
)

parents = Circle.create(name: "parents")
kids = Circle.create(name: "kids")
girls = Circle.create(name: "girls")

park_run = Run.create(
    name: "Park run",
    location: "Central park",
    date: "05-30-2021",
    time: "4:00 PM"
)

neighborhood_run = Run.create(
    name: "Neighborhood run",
    location: "Westerly creek",
    date: "05-30-2021",
    time: "4:00 PM"
)

track_run = Run.create(
    name: "Track run",
    location: "Track",
    date: "05-30-2021",
    time: "4:00 PM"
)

UserCircle.create(
    user_id: haley.id,
    circle_id: girls.id 
)

UserCircle.create(
    user_id: haley.id,
    circle_id: parents.id 
)

UserCircle.create(
    user_id: tim.id,
    circle_id: parents.id 
)

UserCircle.create(
    user_id: hattie.id,
    circle_id: kids.id 
)

UserCircle.create(
    user_id: hattie.id,
    circle_id: girls.id 
)

UserCircle.create(
    user_id: colette.id,
    circle_id: kids.id 
)

UserRun.create(
    user_id: haley.id,
    run_id: park_run.id
)

UserRun.create(
    user_id: tim.id,
    run_id: park_run.id
)

UserRun.create(
    user_id: hattie.id,
    run_id: park_run.id
)

UserRun.create(
    user_id: haley.id,
    run_id: neighborhood_run.id
)

UserRun.create(
    user_id: haley.id,
    run_id: track_run.id
)
