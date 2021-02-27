// External Dependencies
const express    = require('express');
const bodyParser = require('body-parser');
const config     = require('config');

// Internal Dependencies
const apiRoutesInitializer  = require('./api/apiRoutesInitializer');
const oauth2Middleware = require('./middlewares/oauth2Middleware');

// App initialization
const app = express();

// Parameters fetching
const port = config.get('server.port');

// Middlewares
app.use(bodyParser.json());
app.use(oauth2Middleware);

// Initializing routes
apiRoutesInitializer(app);

// Starts listening
app.listen(port, () => {
  console.log(`Server running on port: ${port}`)
});