import 'package:flutter/material.dart';

import '../formation_data.dart';
import 'common.dart';

class Formation extends StatelessWidget {
  const Formation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Mes Formations", context),
      body: ListView.builder(
        itemCount: formations.length,
        itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Image.asset(
                  formations[index].imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          formations[index].degree,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          formations[index].institution,
                          style: const TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        Text(formations[index].description),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
