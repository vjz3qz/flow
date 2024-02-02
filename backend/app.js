import express from "express";
import { json, urlencoded } from "express";
import logger from "morgan";

import usersRouter from "./routes/users";
import workoutRouter from "./routes/workouts";
import exerciseRouter from "./routes/exercises";
import repsRouter from "./routes/reps";

import dotenv from "dotenv";
import cors from "cors";

dotenv.config();

var app = express();
app.use(cors());

app.use(logger("dev"));
app.use(json());
app.use(urlencoded({ extended: false }));

app.use("/api/v1/users", usersRouter);
app.use("/api/v1/workouts", workoutRouter);
app.use("/api/v1/exercises", exerciseRouter);
app.use("/api/v1/reps", repsRouter);

app.listen(process.env.PORT || 5000, () => {
  if (process.env.PORT) {
    console.log(`Server is running on port ${process.env.PORT}`);
  } else {
    console.log("Server is running on port 5000");
  }
});

export default app;
