import { Router } from "express";
var router = Router();
import workoutsController from "../controllers/workouts";

/* GET users listing. */
router.get("/", function (req, res) {
  res.send("respond with a resource");
});

export default router;