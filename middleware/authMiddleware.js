const { jwtVerify } = require('../controllers/jwt/jwtAuth');

require('dotenv').config();

exports.verifyToken = async (req, res, next) => {
  const token = req.header('Authorization').replace('Bearer ', '');
  console.log(token);
  if (!token) {
    return res.status(401).json({ error: 'Access denied' });
  }
  try {
    const decoded = await jwtVerify(token, process.env.JWT_SECRET);
    req.user = decoded;
    next();
  } catch (error) {
    res.status(400).json({ error: 'Invalid token' });
  }
};
