class RecommendedPlaceModel {
  final String name;
  final String image;
  final double rating;
  final String location;

  RecommendedPlaceModel(
      {required this.name,
      required this.image,
      required this.rating,
      required this.location});
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
      name: "Mancora",
      image: 'assets/images/mancora_beach.jpg',
      rating: 4.5,
      location: 'Piura, Perú'),
  RecommendedPlaceModel(
      name: "Vichayito",
      image: 'assets/images/vichayito.jpg',
      rating: 4.8,
      location: 'Piura, Perú'),
  RecommendedPlaceModel(
      name: "Chorrilos",
      image: 'assets/images/chorillos.jpg',
      rating: 4.6,
      location: 'Lima, Perú'),
  RecommendedPlaceModel(
      name: "Zorritos",
      image: 'assets/images/zorritos.jpg',
      rating: 4.8,
      location: 'Tumbes, Perú'),
  RecommendedPlaceModel(
      name: "Punta Sal",
      image: 'assets/images/puntasal.jpg',
      rating: 4.8,
      location: 'Piura, Perú'),
];
