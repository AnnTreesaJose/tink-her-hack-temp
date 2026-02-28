const mongoose = require("mongoose");

const schema = new mongoose.Schema({
  userId: String,
  type: String,
  duration: Number,
  score: Number,
  date: { type: Date, default: Date.now }
});

module.exports = mongoose.model("Session", schema);