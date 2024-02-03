import { Router } from "express";
var router = Router();
import { register, login, logout } from "../controllers/Users";

/* GET users listing. */
router.get("/", function (req, res) {
  res.send("respond with a resource");
});

router.post("/register", register);

router.post("/login", login);

router.get("/logout", logout);

export default router;
