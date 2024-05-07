import 'package:flutter/material.dart';

import '../competence_data.dart';

class Competence extends StatelessWidget {
  const Competence({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mes Compétences'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Web'),
              Tab(text: 'Mobile'),
              Tab(text: 'Data'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildSkillsGrid(webSkills),
            buildSkillsGrid(mobileSkills),
            buildSkillsGrid(dataSkills),
          ],
        ),
      ),
    );
  }

  Widget buildSkillsGrid(List<Skill> skills) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: skills.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            Expanded(
              child: Image.asset(skills[index].imageUrl, fit: BoxFit.contain),
            ),
            Text(skills[index].name),
          ],
        );
      },
    );
  }
}
