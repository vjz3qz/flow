# Workout App

## Database Design

The database design for the workout app consists of the following tables:

- **user**: Stores information about users.

  - ID
  - name
  - username
  - password

- **workout**: Stores information about workouts.

  - ID
  - name
  - user_ID

- **exercise**: Stores information about exercises.

  - ID
  - name
  - reps
  - sets
  - user_ID

- **workout_exercise_association**: Stores information about workout and exercise associations.

  - ID
  - workout_ID
  - exercise_ID

- **workout_log**: Stores information about workout logs.

  - ID
  - set_number
  - weight
  - reps_done
  - date
  - exercise_ID

  - **weight**: Stores information about user's weight.

  - ID
  - weight
  - date
  - user_ID

- **meals**: Stores information about meals.

  - ID
  - name
  - user_ID

  - **foods**: Stores information about foods.

  - ID
  - name
  - calories
  - protein
  - serving size
  - measurement
  - user_ID

  - **meals_food_association**: Stores information about meal and food associations.

  - ID
  - food_ID
  - meal_ID

  - **food_log**: Stores information about food logs.

  - ID
  - date
  - food_ID
  - user_ID

## API Design

The API design for the workout app includes the following endpoints:

- User

  - **Sign up**: Allows users to create an account.
  - **Login**: Authenticates users and provides access token.
  - **Log out**: Logs out the user.

- Workout

  - **Add workout**: Adds a new workout to the database.
  - **View all workouts by user**: Retrieves information about all workouts for a specific user.
  - **View workout**: Retrieves information about a specific workout.
  - **Update workout**: Updates information about a specific workout.
  - **Delete workout**: Deletes a specific workout.

- Exercise

  - **Add exercise**: Adds a new exercise to a database.
  - **View all exercises by user**: Retrieves information about all exercises for a specific user.
  - **View all exercises by workout**: Retrieves information about all exercises for a specific workout.
  - **View exercise**: Retrieves information about a specific exercise.
  - **Update exercise**: Updates information about a specific exercise.
  - **Delete exercise**: Deletes a specific exercise.

- Workout Exercise Association

  - **Add exercise to workout**: Adds an exercise to a workout.
  - **Remove exercise from workout**: Removes an exercise from a workout.

- Workout Log

  - **Log workout**: Logs workout data for a specific exercise.
  - **Bulk log workout**: Logs workout data for multiple exercises.
  - **View workout log by user and exercise**: Retrieves information about all workout logs for a specific user and exercise.
  - **Update workout log**: Updates workout data for a specific exercise.
  - **Delete workout log**: Deletes workout data for a specific exercise.

- Weight

  - **Add weight**: Adds a new weight entry to the database.
  - **View weight by user**: Retrieves information about all weight entries for a specific user.
  - **Update weight**: Updates information about a specific weight entry.
  - **Delete weight**: Deletes a specific weight entry.

- Meal

  - **Add meal**: Adds a new meal to the database.
  - **View all meals by user**: Retrieves information about all meals for a specific user.
  - **View meal**: Retrieves information about a specific meal.
  - **Update meal**: Updates information about a specific meal.
  - **Delete meal**: Deletes a specific meal.

- Food

  - **Add food**: Adds a new food to the database.
  - **View all foods by user**: Retrieves information about all foods for a specific user.
  - **View food**: Retrieves information about a specific food.
  - **Update food**: Updates information about a specific food.
  - **Delete food**: Deletes a specific food.

- Food Meal Association

  - **Add food to meal**: Adds a food to a meal.
  - **Remove food from meal**: Removes a food from a meal.

- Food Log

  - **Log food**: Logs food data for a specific food.
  -
  - **View food log by user and date**: Retrieves information about all food logs for a specific user and date.
  - **Update food log**: Updates food data for a specific food.
  - **Delete food log**: Deletes food data for a specific food.
