const mongoose = require("mongoose");

const schema = new mongoose.Schema({
  userId: String,
  title: String,
  time: String,
  date: String
});

module.exports = mongoose.model("Reminder", schema);