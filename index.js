const express = require('express');
const app = express();
const dotenv = require('dotenv');

dotenv.config();

app.get('/api-key', (req, res) => {
    res.json({ apiKey: process.env.GOOGLE_MAPS_API_KEY });
});

app.use(express.static('public'));

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
