const express = require("express");
const cors = require("cors");
require("dotenv").config();

const connectDB = require("./config/db");

const app = express();
connectDB();

app.use(cors());
app.use(express.json());

app.use("/api/auth", require("./routes/auth"));
app.use("/api/user", require("./routes/user"));
app.use("/api/session", require("./routes/session"));
app.use("/api/reminder", require("./routes/reminder"));
app.use("/api/achievement", require("./routes/achievement"));

app.listen(5000, () => console.log("Server running on port 5000"));