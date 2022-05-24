const express = require('express');
const router = express.Router();
const homeController = require('../controllers/homeController');
const apiController = require('../controllers/apiController');

//sans rien dans le lien on affiche accueil
router.get('/', homeController.index);

//avec about dans le lien on affiche a propos
router.get('/about',homeController.about);

//avec hello/name on affiche bonjour avec une variable let name 
//qui prend le nom que l'on met dans le lien
router.get('/hello/:name', homeController.hello);

router.get('/api', apiController.index)

// gere les erreurs a mettre en dernier
router.all('*', (req, res) => {
    res.status(404).send('Error 404 : page not found')
});

module.exports = router;