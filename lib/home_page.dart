import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6573EC),
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 30),
        child: Column(
          children: [
            Text(
              "Chat With \nYour Friends",
              style: TextStyle(
                  fontSize: 30, fontFamily: "OpenSans", color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
