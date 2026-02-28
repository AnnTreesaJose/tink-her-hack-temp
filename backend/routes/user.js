const router = require("express").Router();
const User = require("../models/User");
const auth = require("../middleware/authMiddleware");

router.get("/",auth, async(req,res)=>{
  const user = await User.findById(req.userId);
  res.json(user);
});

module.exports = router;