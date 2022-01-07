import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Link extends StatefulWidget {
  @override
  _LinkState createState() => _LinkState();
}

class _LinkState extends State<Link> {
  _launchurl() async {
    const url = 'https://www.linkedin.com/in/bodhisatwa-b-0aa767201/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could Not Connect";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Link"),
      ),
      body: Center(
          child: IconButton(
        icon: Icon(Icons.link),
        onPressed: _launchurl,
      )),
    );
  }
}
