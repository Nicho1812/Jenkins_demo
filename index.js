const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello from Jenkins Demo App!');
});

module.exports = app;
