const {User} = require('../models');
const bcrypt = require('bcrypt');
const { jwtSign } = require('./jwt/jwtAuth');

exports.register = async (req,res) => {
    try{
        const { firstName, email, password} = req.body;
        const hashPassword = await bcrypt.hash(password,10);
        const newUser = await User.create({firstName, email, password: hashPassword});
        res.status(201).json(newUser)
    }  catch(err) {
        res.status(400).json({error: err.message})
    }
};

exports.login = async (req, res) => {
    try {
        const { email, password } = req.body;
        const user = await User.findOne({where: {email}});
        if(!user) return res.status(404).json({error: "Invalid email or password"});
        const isPasswordValid = await bcrypt.compare(password, user.password);
        if(!isPasswordValid) return res.status(404).json({error:"Invalid email or password"});
        const token = await jwtSign(
            {
                id: user.id, 
                email: user.email, 
                firstName: user.firstName
            }, 
            process.env.JWT_SECRET,
            {expiresIn: '1d'}
        );
        res.json({token});
    } catch(err) {
        res.status(400).json({error: err.message});
    }
}