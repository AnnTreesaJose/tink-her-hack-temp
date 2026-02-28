const mongoose = require("mongoose");

const schema = new mongoose.Schema({
  userId: String,
  title: String,
  unlocked: Boolean
});

module.exports = mongoose.model("Achievement", schema);