const app = require('./index');
const port = 3000;

app.listen(port, () => {
  console.log(`App running at http://localhost:${port}`);
});
