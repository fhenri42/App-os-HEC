//
//  TestViewController.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/7/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

   var new : UIImage?
    
    
    @IBOutlet weak var My_image: UIButton!
    @IBOutlet weak var My_text: UITextView!
    
    override func viewDidLoad()
    {
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Back")!)
        
    if ( w != 0 )
        {
            new = logoImages[y]
        }
        My_image.setImage(new, forState: UIControlState.Normal)
        super.viewDidLoad()
   
        
        if (y == 0)
        {
            My_text.text = "Artsy Hour\n75016 paris\n13 mai 19h - 23h\nArtsy Hour, le rendez-vous nocturne de la Fondation Louis Vuitton, un vendredi par mois, se met aux couleurs de « L’Observatoire de la lumière ». A travers un jeu de nuances, de projections, de reflets, de transparences et de contrastes, l’œuvre in situ et éphémère de Daniel Buren offre un nouveau regard sur l’architecture de Frank Gehry.\nAu programme de cette soirée teintée de surprises :\n- DJ Set: Planet Claire\nEntité créative menée par Jonathan Chaoul et Adrien «Boo», fondateurs du label CLEKCLEKBOOM. Ils offriront ici un set définitivement ouvert d’esprit, teinté par leurs différentes influences, allant de la soul à la musique électronique…\nLeur sélection musicale «Colors» évoque l’atmosphère visuelle de la Fondation habillée par Daniel Buren et ses reflets de couleurs passant d’une pâle douceur à une saturation accrue, selon la position du soleil et l’intensité de la lumière. Crescendo chromatique et sonore en perspective.\n- Bar à Spritz, cocktails et snacking de printemps\nImaginés par Jean-Louis Nomicos, chef étoilé du restaurant Le Frank. Des cocktails à déguster bien colorés, sur les terrasses au soleil couchant.\n- Micro-visites des expositions\nDécouverte de l’intervention in situ de Daniel Buren et de l’exposition « Des artistes chinois à la Fondation Louis Vuitton » guidés l’œil expert des médiateurs.\nToutes les informations sur notre site : http://bit.ly/1W7ymjc\n--------------------------------\nInformations pratiques :\nVendredi 13 mai 2016 de 19h à 23h (dernier accès à 22h30)\nEntrée au tarif unique de 10 € : http://bit.ly/1TjT5Om \nFondation Louis Vuitton \n8 avenue du Mahatma Gandhi \nBois de Boulogne\n75116 Paris\n+33(0)1 40 69 96 00\nPlus d’information sur : www.fondationlouisvuitton.fr\nNavette en continu depuis l’avenue Friedland (Charles de Gaulle-Etoile) \nMetro : Les Sablons (ligne 1) \nStations autolib et vélib devant la Fondation\nSpritz et cocktails : 8 et 10€ TTC \nSnacks sucrés et salés : de 5 à 7€ TTC\nL’abus d’alcool est dangereux pour la santé."
        }
        if ( y == 1)
        {
            My_text.text = " BROC’DEJ DU DIMANCHE \n 75018 paris \n15 MAI 12H-18H \n \nLe dimanche à La recyclerie, ça chine sur les quais !\nDes vide-greniers sympathiques s’installent le long des voies de la Petite Ceinture, en plein air, pour troquer ou vendre tout ce qu’on aime mais dont on a plus besoin, pour trouver ce que l’on cherche, mais d’occasion !\n            On prend nos deux mètres, on s’installe dans une jolie ambiance Portobello Road londonienne, on papote avec son voisin. Le broc’déj de La Recyclerie c’est plus qu’une simple brocante, c’est l’occasion d’échanger, de troquer, de donner, de vendre et d’acheter d’occasion. Aucune thématique, aucune contrainte, venez participer aux broc’déj pour vider vos placards de toutes ces choses qui ne vous servent plus : on vide sa boite à couture, son grenier, sa penderie, sa bibliothèque et on re-remplit le tout avec des jolies choses originales et de seconde main ! On se fait plaisir.\n            Tous les dimanches de 12h à 18h du 15 mai au 15 octobre.\n            Prix : 30€ les 2 mètres linéaires (table comprise) / 20€ pour les Amis REcycleurs\nInscription : chezrene@larecyclerie.com \n Venez nombreux!"
        }
        if ( y == 2)
        {
            My_text.text = "Burger Contenders\n75010 paris \n14 mai 18h - 15 mai 2h\nLe magazine Paris Burger et le Café A organisent la première #BurgerContenders, une soirée dédiée aux burgers et au hip-hop le 14 mai à Paris\n #BurgerContenders, c’est un événement inédit qui réunit les meilleurs restaurants de burger, et une sélection éclectique de DJ hip-hop pour faire danser les parisiens jusqu’au bout de la nuit. La street culture de A à Z, pour une première en France.\n La première #BurgerContenders se tiendra :\nLe 14 mai 2016, à partir de 18h \nCafé A, 148 Rue du Faubourg Saint-Martin, Paris (10ème)\n Au programme, Les meilleurs restaurants de burger parisiens proposeront à partir de 18h leurs meilleurs burgers au prix de 10€ (formule burger + frites).\nLes premiers restaurants participants sont :\nLe Camion Qui Fume\nLE BAR A Burger\nRoomies\nLe Réfectoire\nLittle Baobei\nTout au long de la soirée, des artistes reconnus de la scène parisienne proposeront le meilleur du hip hop au sein de la Chapelle du Café A.\nLes artistes présents seront : \n BABAFLEX (JAZZEFFIQ) \nSARAHINA \nEtienne Etienne\nInformations pratiques\nHoraires 18h - 2h \nAdresse Café A, 148 Rue du Faubourg Saint-Martin, Paris (10ème)\nPréventes (places limitées) \n5€ : https://www.weezevent.com/burger-contender-x-hiphop\nwww.burgercontenders.com"
        }
        if ( y == 3)
        {
            My_text.text = " DANAKIL - NUIT DEBOUT PARIS \n            75011  paris\n            15 MAI 15H - 18H\n            Pour afficher son soutien au mouvement Nuit Debout, le groupe Danakil sera en concert gratuit Place de la République le dimanche 15 mai 2016 de 15h00 à 18h00 !\n\nVenez nombreux!"
        }
        if ( y == 4)
        {
            My_text.text = "Disco SALADE à Bastille\n\n75011 paris\n15 MAI 13H-16H30\nDisco Soupe et Moissons solidaires s’associent pour une action de glanage/récup/transformation sur le marché de Bastille.\nQue vous sachiez cuisiner ou non, venez laver, éplucher, couper, tailler, mixer la récolte du jour. Nous en ferons des salades, gazpachos, salades de fruits, soupes et smoothies en fonction de la météo du jour.\nDisco Soupe est un mouvement solidaire et festif qui s’approprie l’espace public et le rebut alimentaire pour sensibiliser au gaspillage alimentaire.\nPlus d’infos très bientôt....\nBenoit"
        }
        if (y == 5)
        {
            My_text.text = "nova mix club\n 75011 paris\n13 mai 20h\nAddicts du Vendredi en musique, camarades de danses excités, habitués des ondes de Radio Nova : le Nova [Mix] Club est de retour ce vendredi 13 mai au BADABOUM avec un line up qui, plutôt que d’apporter le malheur comme le voudraient les superstitions pessimistes, apportera au contraire un max de bonheur, via l’alliance de la funk, de la techno, de la house, et de la grosse chaleur qui risque de régner dans le coin.\n            - Warm Up By Nova Team – Tout et n’importe quoi mais en bien\n- LORD FUNK - Funk anoblie\n- Local DJ - Mix du coin\n - Madben - Techno Eden\n - Traumer - House transversale\n CONCRÈTEMENT\n      Ouverture des portes à 20h00, et direct sur Radio Nova de 21h00 à Minuit.            \nEntrée gratuite sur invitation uniquement valable avant 22h00 http:www.novaplanet.com/events/novamixclub\n            LE BADABOUM\n            Polymorphe : le BADABOUM n’est pas un bar à cocktail, ce n’est pas non plus un club ou une salle de concert, c’est encore moins une garçonnière cachée au premier étage… Le Badaboum c’est tout ça à la fois ! Concerts détonants, Dancefloor agité, Cocktails maison et Snack revisité : un endroit où l’on se sent bien à toute heure que l’on aime écouter, danser ou juste s’aimer...\n19h00 Cocktail Bar / 23h30 Club\nwww.badaboum.paris\n2 bis rue des Taillandiers - Paris 11\n M°Bastille ou Ledru Rollin\nCLUB MEMBER\nwww.badaboum.paris/nl.php\npOUR RENTRER\nAvec Chauffeur-Privé\n1ère course offerte (max 15 euros) avec le code NOVA - http://po.st/A4PiY6"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}
