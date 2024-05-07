import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildTopSection(context),
          _buildBottomSection(context),
        ],
      ),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Mathis Laversin',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/user.jpg'),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () => launchURL('https://twitter.com'),
              ),
              IconButton(
                icon: const Icon(Icons.camera_alt),
                onPressed: () => launchURL('https://instagram.com'),
              ),
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () => launchURL('https://linkedin.com'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(100),
            1: FlexColumnWidth(),
          },
          children: [
            TableRow(children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Icon(Icons.email),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text("mathis.laversin92@gmail.com"),
              ),
            ]),
            TableRow(children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Icon(Icons.phone),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text("+33 6 12 34 56 78"),
              ),
            ]),
            TableRow(children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Icon(Icons.location_on),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text("123 rue des cramptés, 75000 Paris"),
              ),
            ]),
            TableRow(children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Icon(Icons.web),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text("www.mathis-laversin.site"),
              ),
            ]),
            TableRow(children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Icon(Icons.description),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: const Text("Développeur expert en Flutter"),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
