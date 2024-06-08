const express = require('express');
const { register, login } = require('../controllers/authController');
const { validateUser } = require('../middleware/validMiddleware');
const router = express.Router();


router.post('/login', login);
router.post('/register', validateUser, register);

module.exports = router;