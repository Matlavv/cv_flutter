class Skill {
  final String name;
  final String imageUrl;

  Skill({required this.name, required this.imageUrl});
}

final List<Skill> webSkills = [
  Skill(name: 'React', imageUrl: 'assets/react.png'),
  Skill(name: 'Next.js', imageUrl: 'assets/nextjs.png'),
  Skill(name: 'Tailwind', imageUrl: 'assets/tailwind.png'),
  Skill(name: 'Html', imageUrl: 'assets/html.png'),
  Skill(name: 'Node', imageUrl: 'assets/node.png'),
  Skill(name: 'PHP', imageUrl: 'assets/css.png'),
];

final List<Skill> mobileSkills = [
  Skill(name: 'Flutter', imageUrl: 'assets/flutter.png'),
  Skill(name: 'React Native', imageUrl: 'assets/react.png'),
  Skill(name: 'Expo', imageUrl: 'assets/expo.png'),
];

final List<Skill> dataSkills = [
  Skill(name: 'MongoDB', imageUrl: 'assets/mongodb.png'),
  Skill(name: 'PostgreSQL', imageUrl: 'assets/postgresql.png'),
  Skill(name: 'Firebase', imageUrl: 'assets/firebase.png'),
  Skill(name: 'Docker', imageUrl: 'assets/docker.png'),
  Skill(name: 'MySQL', imageUrl: 'assets/mysql.png'),
];
