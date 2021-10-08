const { Pool } = require('pg')

//connextion posgrest
const pool = new Pool({
    host: 'localhost',
    user: 'postgres',
    password: 'password',
    database: 'chat',
    port: '5432'
})


const getAllChats = async(req, res) => {
    try {
        const response = await pool.query('SELECT * FROM message')
        res.status(200).json(response.rows)
    } catch (e) {
        res.send(e)
    }
}

const createChats = async(req, res) => {
    try {

        const { transmitter, date, message, avatar } = req.body
        const response = await pool.query('INSERT INTO message (transmitter, date, text_message, avatar) VALUES ($1,$2,$3,$4)', [transmitter, date, message, avatar])
        res.status(200).json({
            message: 'chat added succesfully',
            body: {
                user: { transmitter, date, message, avatar }
            }
        })
    } catch (e) {
        res.send(e)
    }

}

module.exports = {
    getAllChats,
    createChats
}