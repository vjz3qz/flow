create table if not exists users (
    id serial,
    name varchar(255),
    username varchar(255) unique,
    password varchar(255),
    primary key (id)
);

create table if not exists workouts (
    id serial,
    name varchar(255),
    user_id integer,
    primary key (id),
    foreign key (user_id) references users(id)
);

create table if not exists exercises (
    id serial,
    name varchar(255),
    sets integer,
    reps integer,
    user_id integer,
    primary key (id),
    foreign key (user_id) references users(id)
);

create table if not exists workout_exercise_association (
    id serial,
    workout_id integer,
    exercise_id integer,
    primary key (id),
    foreign key (workout_id) references workouts(id),
    foreign key (exercise_id) references exercises(id)
);

create table if not exists workout_log (
    id serial,
    set_number integer,
    weight integer,
    reps_done integer,
    date date,
    exercise_id integer,
    primary key (id),
    foreign key (exercise_id) references exercises(id)
);

create table if not exists weights (
    id serial,
    weight decimal,
    date date,
    user_id integer,
    primary key (id),
    foreign key (user_id) references users(id)
);

create table if not exists meals (
    id serial,
    name varchar(255),
    user_id integer,
    primary key (id),
    foreign key (user_id) references users(id)
);

create table if not exists foods (
    id serial,
    name varchar(255),
    calories integer,
    protein integer,
    serving_size integer,
    measurement varchar(255),
    user_id integer,
    primary key (id),
    foreign key (user_id) references users(id)
);

create table if not exists meal_food_association (
    id serial,
    meal_id integer,
    food_id integer,
    primary key (id),
    foreign key (meal_id) references meals(id),
    foreign key (food_id) references foods(id)
);