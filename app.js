const express = require('express');
const authRouter = require('./routers/authRouter');
const userRouter = require('./routers/userRouter');
const db = require('./models')
const path = require('path');
require('dotenv').config();

const PORT = process.env.PORT || 3000;

const app = express()
    .use(express.json())
    .use(express.static(path.join(__dirname, 'uploads')))

app.use('/user', authRouter);
app.use('/', userRouter);

db.sequelize.sync().then(() => {
    app.listen(PORT, () => {
        console.log(`Example app listening on port ${PORT}`);
        console.log('Database Connected!')
    })
}).catch((err) => console.error('Error: ' + err));
