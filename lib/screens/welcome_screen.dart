import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'lib/assets/images/logo.png',
              width: 300,
            ),
            SizedBox(height: 20),
            Text(
              'Go and enjoy our features for free and make your life easy with us.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Lets Start',
                style: TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 254, 182, 36),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
