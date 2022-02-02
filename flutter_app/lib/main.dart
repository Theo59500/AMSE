import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/media.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter TP1',
      home: Home(),
    );
  }
}
class MediaModel{
  String imageURL;
  String title;
  String description_courte;
  String description_longue;
  List<List<String>> Albums;
  //constructor
  MediaModel(this.imageURL,  this.title, this.description_courte, this.description_longue, this.Albums);
}

final groupe_musique = [
  MediaModel(
    'images/Gojira.jpg',
    'Gojira',
    'Groupe de death metal français',
    "Gojira est un groupe français de metal, originaire d'Ondres. Il est initialement formé en 1996 sous le nom de Godzilla, puis adopte le nom de Gojira en 2001. Le groupe est composé de quatre membres : Joseph Duplantier (chant et guitare), Mario Duplantier (batterie), frère du premier, Christian Andreu (guitare) et Jean-Michel Labadie (basse). Depuis sa formation, Gojira compte un total de sept albums studio et trois DVD live. Associé au death metal ainsi qu'au metal progressif, Gojira se distingue dans la scène metal par la sensibilité écologiste et spirituelle de leurs chansons.",
    [['Fortitude', '2021', 'images/gojira_fortitude.jpg'], ['Magma', '2016', 'images/magma.jpg'], ["L'Enfant Sauvage", "2012", "images/lenfantsauvage.jpg"], ["The Way of All Flesh", "2008", 'images/thewayofallflesh.jpg'], ["From Mars To Siruis", "2005", "images/frommarstosirius.jpg"], ["The Link", "2003", "images/thelink.jpg"]],
  ),
  MediaModel(
    'images/Metallica.jpg',
    'Mettalica',
    'Groupe de Heavy metal américain',
    "Metallica est un groupe de heavy metal américain originaire de Californie. Formé à Los Angeles en 1981, le groupe est composé actuellement de deux de ses membres fondateurs, James Hetfield (chant, guitare rythmique) et Lars Ulrich (batterie), ainsi que du guitariste Kirk Hammett (arrivé en 1983) et du bassiste Robert Trujillo, qui rejoindra le groupe en 2003. Les précédents membres du groupe incluent Dave Mustaine (après son exclusion, membre fondateur de Megadeth), les bassistes Ron McGovney (uniquement pour les démos), Cliff Burton (pour les trois premiers albums ; décédé en 1986) et Jason Newsted (prenant la suite de Burton et remplacé en 2003 par Trujillo). Le groupe a longtemps collaboré avec le producteur Bob Rock, qui a produit tous leurs albums de 1990 à 2003 et est devenu temporairement le bassiste du groupe, entre le départ de Newsted et l'arrivée de Trujillo. Le groupe se forme au début des années 1980 lorsque Hetfield se rend à une annonce postée dans un journal local par le batteur Lars Ulrich.",
    [['Fortitude', '2021', 'images/gojira_fortitude.jpg'], ['Magma', '2016', 'images/magma.jpg'], ["L'Enfant Sauvage", "2012", "images/lenfantsauvage.jpg"], ["The Way of All Flesh", "2008", 'images/thewayofallflesh.jpg'], ["From Mars To Siruis", "2005", "images/frommarstosirius.jpg"], ["The Link", "2003", "images/thelink.jpg"]],
  ),
  MediaModel(
    'images/Royalblood.jpg',
    'Royal Blood',
    'Groupe de hard rock britannique',
    "Le duo composé du chanteur et bassiste Mike Kerr, et du batteur Ben Thatcher, s'est formé à Worthing, en Angleterre, durant l’année 2013. Ils jouent leur premier concert à peine deux jours après le retour de Mike d’Australie où ils y faisaient un « job d’été ». Durant l’été 2013 pendant le festival Glastonbury Matt Helders le batteur des Arctic Monkeys est aperçu portant un t-shirt de Royal Blood avant même la sortie du premier single du groupe. Le 11 novembre 2013, le duo prometteur dévoile son premier single Out of the Black suivi de sa face B nommée Come On Over.",
    [['Fortitude', '2021', 'images/gojira_fortitude.jpg'], ['Magma', '2016', 'images/magma.jpg'], ["L'Enfant Sauvage", "2012", "images/lenfantsauvage.jpg"], ["The Way of All Flesh", "2008", 'images/thewayofallflesh.jpg'], ["From Mars To Siruis", "2005", "images/frommarstosirius.jpg"], ["The Link", "2003", "images/thelink.jpg"]],
  ),
  MediaModel(
    'images/Shinedown.jpg',
    'Shinedown',
    'Groupe de hard rock américain',
    "Shinedown est un groupe de hard rock américain, originaire de Jacksonville, en Floride. Le groupe est formé au début de l'année 2001, et signe un contrat avec le label Atlantic Records en 2002. Shinedown dénombre, en 2018, un total de six albums studio incluant Leave a Whisper (2003), Us and Them en (2005), The Sound of Madness en (2008), Amaryllis (2012), Threat To Survival (2015) et Attention Attention (2018). Ils participent, entre autres, à la bande originale du film Expendables : Unité spéciale en réalisant la chanson de la bande-annonce, intitulée Diamond Eyes. Leur chanson Devour de l'album The Sound of Madness se retrouve au début du film Destination finale 4. Shinedown dénombre plus de huit millions d'albums vendus dans le monde.",
    [['Fortitude', '2021', 'images/gojira_fortitude.jpg'], ['Magma', '2016', 'images/magma.jpg'], ["L'Enfant Sauvage", "2012", "images/lenfantsauvage.jpg"], ["The Way of All Flesh", "2008", 'images/thewayofallflesh.jpg'], ["From Mars To Siruis", "2005", "images/frommarstosirius.jpg"], ["The Link", "2003", "images/thelink.jpg"]],
  )
];

const Email = "theo.boussarie@etu.imt-nord-europe.fr";

launchMailto() async {
  final mailtoLink = Mailto(
    to: [Email],
    subject: '[TP1]',
    body: 'Félicitations, ton application fonctionne bien !',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}


class GroupWidget extends StatelessWidget {

  final MediaModel groupe;

  const GroupWidget(this.groupe);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Column(
        children: <Widget>[
          Image.asset(groupe.imageURL),
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(groupe.title, style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(groupe.description_longue),
          ),
        ],
      ),
    );
  }
}
