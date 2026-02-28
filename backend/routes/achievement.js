const router = require("express").Router();
const Achievement = require("../models/Achievement");
const auth = require("../middleware/authMiddleware");

router.get("/",auth, async(req,res)=>{
  res.json(await Achievement.find({userId:req.userId}));
});

router.post("/unlock",auth, async(req,res)=>{
  const a = await Achievement.create({
    userId:req.userId,
    title:req.body.title,
    unlocked:true
  });
  res.json(a);
});

module.exports = router;