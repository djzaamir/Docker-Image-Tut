const express = require("express");

const app = express();

app.get("/", (req, res) => res.status(200).send("Hello There from Docker Container :)"));

const port = 9999;
app.listen(port, () => console.log("Listening on port -> " + port));