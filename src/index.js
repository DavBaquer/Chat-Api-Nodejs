const express = require('express')
const app = express()

//settings port
app.set('port', process.env.Port || 4000)


// Configuration headers and cors
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
    next();
});
//middlewares
app.use(express.json())
app.use(express.urlencoded({ extended: false }))

//routes
app.use(require('./routers/chat'))

app.listen(app.get('port'), () => {
    console.log('server on port', app.get('port'))
});