//import d'espress
const express = require('express');
//appli express
const app = express();
//afficher les liens dans la console
app.use((req, res, next) => {
    let method = req.method;
    let path = req.originalUrl;
    console.log(`${method} ${path}`);
    next()
});
console.log ('ok');
//routage static
app.use('/public', express.static(__dirname + '/public'))

//import
//require('./routes/index')(app)
const router = require('./routes');

//dire d'utiliser le router
app.use('/', router);

//port du serveur + lien du serveur
app.listen(80, () => {
    console.log("Server Ready (http://localhost)")
});