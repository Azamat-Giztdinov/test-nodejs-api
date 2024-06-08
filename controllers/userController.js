const {User} = require('../models');

exports.updateUser = async (req,res) => {
    try {
        const {id} = req.params;
        const {email, firstName, lastName, gender} = req.body;
        const user = await User.findByPk(id);
        if(!user) return res.status(404).json({error: "User not found"});
        if(email) user.email = email;
        if(firstName) user.firstName = firstName;
        if(lastName) user.lastName = lastName;
        if(gender) user.gender = gender;
        if(req.file) user.photo = req.file.filename;
        await user.save();
        res.json(user);
    } catch (err) {
        res.status(400).json({error: err.message});
    }
};

exports.getUser = async (req, res) => {
    try {
        const { id } = req.params;
        const user = await User.findByPk(id);
        if(!user) return res.status(404).json({error: "User not found"});
        res.json(user);
    } catch(err) {
        res.status(400).json({ error: err.message});
    }
};

exports.getAllUsers = async (req, res) => {
    try {
        const {page = 1} = req.query;
        console.log(page);
        const limit = 10;
        const offset = (page - 1) * limit;
        const users = await User.findAll({
            order:[['createdAt', 'asc']], 
            limit,
            offset
        });
        res.json(users);
    } catch(err) {
        res.status(400).json({error: err.message});
    }
}