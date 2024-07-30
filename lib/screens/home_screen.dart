import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_generator_flutter/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String qrData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appGrey,
      body: Stack(
        children: <Widget>[
          Center(
            child: Transform.translate(
              offset: Offset(0, -110),
              child: QrImageView(
                backgroundColor: Colors.white,
                data: qrData,
                version: QrVersions.auto,
                size: 200.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 300,
                  child: TextField(
                    onChanged: (value) {
                      qrData = value;
                    },
                    style: TextStyle(color: Colors.white),
                    cursorColor: appYellow,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: Icon(Icons.qr_code),
                      prefixIconColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: appYellow, width: 3.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      label: Text(
                        'Data',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SizedBox(
                  width: 300,
                  child: Text(
                    'Please type in your data you want to generate',
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
                    setState(() {
                      setState(() {});
                      FocusScope.of(context).requestFocus(FocusNode());
                    });
                  },
                  icon: Icon(
                    Icons.qr_code,
                    color: appGrey,
                  ),
                  label: Text(
                    'Generate QR Code',
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
        ],
      ),
    );
  }
}
