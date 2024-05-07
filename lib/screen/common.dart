import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

AppBar buildAppBar(String title, BuildContext context) {
  return AppBar(
    backgroundColor: Colors.grey,
    title: Text(title),
    actions: <Widget>[
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
  );
}

void launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
