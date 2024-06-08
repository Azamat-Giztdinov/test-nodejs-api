const express = require('express');
const { getUser, updateUser, getAllUsers } = require('../controllers/userController');
const { verifyToken } = require('../middleware/authMiddleware');
const { validateUser } = require('../middleware/validMiddleware');
const router = express.Router();
const upload = require("../middleware/upload");


router
    .route('/profile/:id')
    .get(verifyToken, getUser)
    .put(verifyToken, upload.single('photo'),validateUser, updateUser);

router.get('/profiles', verifyToken, getAllUsers);

module.exports = router;