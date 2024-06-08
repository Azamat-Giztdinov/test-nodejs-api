const { body, validationResult } = require('express-validator');

exports.validateUser = [
  body('email').optional().isEmail().withMessage('Email must be a valid email'),
  body('password').optional().isLength({ min: 6 }).withMessage('Password must be at least 6 characters long'),
  body('firstName').optional().isString().withMessage('First name must be a string'),
  body('lastName').optional().isString().withMessage('Last name must be a string'),
  body('gender').optional().isIn(['Male', 'Female']).withMessage('Gender must be either Male or Female'),
  body('photo').optional().isString().withMessage('Photo must be a string'),
  (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({ errors: errors.array() });
    }
    next();
  }
];