const express = require("express");
require("./database");
const port = 3000;
const app = express();
app.use(express.json());
app.listen(port, () => {
  console.log(`API iniciou em porta ${port}`);
});
module.exports = app;
