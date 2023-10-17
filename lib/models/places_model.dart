import 'package:travel_app/widgets/places.dart';

class PlacesModel {
  final String name;
  final String image;

  PlacesModel({required this.name, required this.image});
}

List<PlacesModel> places = [
  PlacesModel(name: "Playa", image: 'assets/icons/playa.png'),
  PlacesModel(name: "Lagos", image: 'assets/icons/lago.png'),
  PlacesModel(name: "Montañas", image: 'assets/icons/montañas.png'),
  PlacesModel(name: "Bosque", image: 'assets/icons/bosque.png')
];
