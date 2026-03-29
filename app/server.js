const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('DevOps EC2 Project 🚀');
});

app.listen(3000);
