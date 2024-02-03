import { Router } from "express";
var router = Router();
import ExercisesController from "../controllers/Exercises";

/* GET users listing. */
router.get("/", function (req, res) {
  res.send("respond with a resource");
});

export default router;
