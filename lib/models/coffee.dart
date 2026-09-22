class Coffee {
  const Coffee({
    required this.id,
    required this.name,
    required this.origin,
    required this.roastLevel,
    required this.flavorNotes,
    required this.brewMethod,
    required this.rating,
    required this.favoriteDate,
  });

  final String id;
  final String name;
  final String origin;
  final String roastLevel;
  final String flavorNotes;
  final String brewMethod;
  final double rating;
  final DateTime favoriteDate;
}