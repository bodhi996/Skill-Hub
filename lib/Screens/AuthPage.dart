import 'package:flutter/material.dart';
import 'package:student_store/Screens/ProductCatalog.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/Icons/logo.png'),
            Text(
              "Talent Store",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: "Merriweather",
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xffD7A74F)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(400))),
                    side: MaterialStateProperty.all(
                        BorderSide(width: 2, color: Colors.white))),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => ProductCatalog()));
                },
                child: Text("Press to Enter", style: TextStyle(fontSize: 20))),
            Text(
              "All Rights Reserved",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
