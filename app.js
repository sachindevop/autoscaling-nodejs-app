const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('<h1>Auto Scaling Demo App</h1> <h4>Message: Success</h4> <p>version: 1.0.0</p>');
})

app.get('/test', (req, res) => {
    res.send('<h1>test API</h1> <h4>Message: Success</h4>');
})

app.listen(port,()=>{
    console.log(`demo app is up and listening to port ${port}`);
})