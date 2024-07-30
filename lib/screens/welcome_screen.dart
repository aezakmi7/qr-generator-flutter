import 'package:flutter/material.dart';
import 'package:qr_generator_flutter/screens/home_screen.dart';
import 'package:qr_generator_flutter/utilities/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'lib/assets/images/logo.png',
                width: 300,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300,
              child: Text(
                'Go and enjoy our features for free and make your life easy with us.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ));
              },
              icon: Icon(
                Icons.arrow_forward,
                color: appGrey,
              ),
              label: Text(
                'Let\'s Start',
                style: TextStyle(color: appGrey),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  appYellow,
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                fixedSize: const WidgetStatePropertyAll(
                  Size(280, 55),
                ),
              ),
            ),
            const SizedBox(height: 50), // add some space at the bottom
          ],
        ),
      ),
    );
  }
}
