//class HomeController{
//    index(req,res){

//    }
//}

//module.exports = new HomeController();

// gere les reponses de l'index route page accueil
exports.index = (req, res) => {
    res.send('Accueil du controleur');
}
// gere les reponses de l'index route about
exports.about = (req, res) => {
    res.send('A Propos')
}
// gere les reponses de l'index route hello/name
exports.hello =  (req, res) => {
    let name = req.params.name
    console.log(name.params);
    res.send(`Bonjour ${name}`)
}