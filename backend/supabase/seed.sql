-- Insert into users
insert into users (name, email, password) values 
('John Doe', 'john.doe@example.com', 'password123'),
('Jane Doe', 'jane.doe@example.com', 'password123');

-- Insert into workouts
insert into workouts (name, user_id) values 
('Workout 1', 1),
('Workout 2', 2);

-- Insert into exercises
insert into exercises (name, sets, reps, user_id) values 
('Exercise 1', 3, 10, 1),
('Exercise 2', 4, 12, 2);

-- Insert into workout_exercise_association
insert into workout_exercise_association (workout_id, exercise_id) values 
(1, 1),
(2, 2);

-- Insert into workout_log
insert into workout_log (set_number, weight, reps_done, date, exercise_id) values 
(1, 100, 10, '2022-01-01', 1),
(2, 120, 12, '2022-01-02', 2);

-- Insert into weights
insert into weights (weight, date, user_id) values 
(70.5, '2022-01-01', 1),
(65.5, '2022-01-02', 2);

-- Insert into meals
insert into meals (name, user_id) values 
('Meal 1', 1),
('Meal 2', 2);

-- Insert into foods
insert into foods (name, calories, protein, serving_size, measurement, user_id) values 
('Food 1', 500, 20, 100, 'grams', 1),
('Food 2', 600, 30, 200, 'grams', 2);

-- Insert into meal_food_association
insert into meal_food_association (meal_id, food_id) values 
(1, 1),
(2, 2);