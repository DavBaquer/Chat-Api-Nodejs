const { Router } = require('express')
const router = Router()

const { getAllChats, createChats } = require('../controllers/chat.controller')

router.get('/chat', getAllChats)
router.post('/chat/create', createChats)

module.exports = router