const router = require("express").Router();
const Session = require("../models/Session");
const User = require("../models/User");
const auth = require("../middleware/authMiddleware");

router.post("/",auth, async(req,res)=>{
  const {type,duration,score}=req.body;

  const session = await Session.create({
    userId:req.userId,type,duration,score
  });

  const user = await User.findById(req.userId);

  user.sessions += 1;
  user.points += 20;

  const today = new Date().toDateString();

  if(!user.lastLogin || new Date(user.lastLogin).toDateString()!==today)
      user.streak +=1;

  user.lastLogin = new Date();
  await user.save();

  res.json(session);
});

module.exports = router;