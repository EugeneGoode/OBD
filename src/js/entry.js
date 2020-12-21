const connection = require('../connection');
const Sequilize = require('sequelize');

const Profile = require('./profile.js');

class Entry extends Sequilize.Model {}

Entry.init(
    {
        role: {
            type: Sequilize.STRING(100),
            primaryKey: true
        },
        profile_role: {
            type: Sequilize.STRING(45),
            allowNull: false
        }
    },
    {
        sequelize: connection,
        freezeTableName: true,
        modelName: 'Entry'
    }
);

Profile.hasMany(Entry);

Entry.belongsTo(Profile, {
    foreignKey: 'profile_role'
});

module.exports = Entry
