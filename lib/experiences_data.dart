class ExperienceData {
  final String imageUrl;
  final String title;
  final String company;
  final String description;

  ExperienceData({
    required this.imageUrl,
    required this.title,
    required this.company,
    required this.description,
  });
}

final List<ExperienceData> experiences = [
  ExperienceData(
    imageUrl: 'assets/apple.png',
    title: 'Développeur Web',
    company: 'Apple',
    description:
        'Responsable du développement et de la maintenance de sites web.',
  ),
  ExperienceData(
    imageUrl: 'assets/samsung.png',
    title: 'Ingénieur Logiciel',
    company: 'Samsung',
    description: 'Conception et développement de solutions logicielles.',
  ),
  ExperienceData(
    imageUrl: 'assets/nvidia.png',
    title: 'Ingénieur Logiciel',
    company: 'Nvidia',
    description: 'Conception et développement de solutions logicielles.',
  ),
  ExperienceData(
    imageUrl: 'assets/niantic.png',
    title: 'Ingénieur Logiciel',
    company: 'Niantic',
    description: 'Conception et développement de solutions logicielles.',
  ),
];
