const express = require('express');
const app = express();

// Color comes from env (BLUE or GREEN) to show which slice is serving traffic
const color = process.env.COLOR || 'blue';
const version = process.env.APP_VERSION || 'v1';

app.get('/', (req, res) => {
  res.send(`Hello from ${color.toUpperCase()} - ${version}\n`);
});

const port = process.env.PORT || 8080;
app.listen(port, () => console.log(`Listening on ${port} (${color}, ${version})`));