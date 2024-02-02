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
  - workout_ID

- **reps**: Stores information about reps.
  - ID
  - set_number
  - amount
  - date
  - exercise_ID

## API Design

The API design for the workout app includes the following endpoints:

- **Sign up**: Allows users to create an account.
- **Login**: Authenticates users and provides access token.
- **Add workout**: Adds a new workout to the database.
- **Add exercise**: Adds a new exercise to a workout.
- **Log info**: Logs exercise data for a specific exercise.
- **Log out**: Logs out the user.
- **View workout**: Retrieves information about a specific workout.
- **View exercise**: Retrieves information about a specific exercise.
- **Update workout**: Updates information about a specific workout.
- **Update exercise**: Updates information about a specific exercise.
- **Delete workout**: Deletes a specific workout.
- **Delete exercise**: Deletes a specific exercise.
