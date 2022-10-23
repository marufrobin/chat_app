import 'package:chat_app/widgets/chat_box.dart';
import 'package:chat_app/widgets/userFirstRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6573EC),
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Chat With \nYour Friends",
                style: TextStyle(
                    fontSize: 30, fontFamily: "OpenSans", color: Colors.white),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              height: 100,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9), shape: BoxShape.circle),
                    child: Icon(Icons.search, size: 30, color: Colors.black),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  UserFirstRow(),
                ],
              ),
            ),
            ChatBox()
          ],
        ),
      ),
    );
  }
}
