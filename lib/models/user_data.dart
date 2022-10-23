import 'package:flutter/material.dart';

class UserData {
  int id;
  String firstName;
  String lastName;
  String imageName;
  Color BackgroundClr;

  UserData(this.id, this.firstName, this.lastName, this.imageName,
      this.BackgroundClr);

  static List<UserData> userList() {
    return [
      UserData(0, "Maruf", "Robin", "images/face1.png", Color(0xffE7C4C4)),
      UserData(1, "Maruf", "Robin", "images/face2.png", Color(0xffF3BD95)),
      UserData(2, "Maruf", "Robin", "images/face3.png", Color(0xffAADE9D)),
      UserData(3, "Maruf", "Robin", "images/face4.png", Color(0xff96C4FA)),
      UserData(4, "Maruf", "Robin", "images/face5.png", Color(0xffECAAF2)),
      UserData(5, "Maruf", "Robin", "images/face5.png", Color(0xff7DD8F4)),
      UserData(6, "Maruf", "Robin", "images/face5.png", Color(0xff879EDB)),
      UserData(7, "Maruf", "Robin", "images/face5.png", Color(0xffEC98B1)),
      UserData(8, "Maruf", "Robin", "images/face5.png", Color(0xffE7C4C4)),
      UserData(9, "Maruf", "Robin", "images/face5.png", Color(0xffE7C4C4)),
      UserData(10, "Maruf", "Robin", "images/face5.png", Color(0xffE7C4C4)),
      UserData(11, "Maruf", "Robin", "images/face5.png", Color(0xffE7C4C4)),
      UserData(12, "Maruf", "Robin", "images/face6.png", Color(0xffE7C4C4))
    ];
  }
}
