import 'package:flutter/material.dart';

import 'common.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Mes info", context),
      body: ListView(
        children: const [
          Article(
            imageUrl: './assets/jo.jpg',
            title: 'Jeux Olympiques 2024',
            content: 'Les Jeux Olympiques de 2024 se tiendront à Paris...',
          ),
          Article(
            imageUrl: './assets/euro.jpg',
            title: 'Euro de Football 2024',
            content:
                'Le championnat d\'Europe de football 2024 aura lieu en Allemagne...',
          ),
        ],
      ),
    );
  }
}

class Article extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String content;

  const Article({
    required this.imageUrl,
    required this.title,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(content),
        ),
      ],
    );
  }
}
