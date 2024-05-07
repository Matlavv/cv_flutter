class FormationData {
  final String imageUrl;
  final String degree;
  final String institution;
  final String description;

  FormationData({
    required this.imageUrl,
    required this.degree,
    required this.institution,
    required this.description,
  });
}

final List<FormationData> formations = [
  FormationData(
    imageUrl: 'assets/imie.png',
    degree: 'Master en Informatique',
    institution: 'Université XYZ',
    description: 'Spécialisation en développement logiciel.',
  ),
  FormationData(
    imageUrl: 'assets/mds.png',
    degree: 'Licence en Informatique',
    institution: 'École d\'Informatique ABC',
    description: 'Une description de ce que vous avez appris.',
  ),
];
