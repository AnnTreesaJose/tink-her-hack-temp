const router = require("express").Router();
const Reminder = require("../models/Reminder");
const auth = require("../middleware/authMiddleware");

router.post("/",auth, async(req,res)=>{
  const r = await Reminder.create({
    userId:req.userId,
    ...req.body
  });
  res.json(r);
});

router.get("/",auth, async(req,res)=>{
  const list = await Reminder.find({userId:req.userId});
  res.json(list);
});

module.exports = router;