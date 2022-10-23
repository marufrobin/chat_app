import 'package:chat_app/models/user_data.dart';
import 'package:flutter/material.dart';

class UserFirstRow extends StatefulWidget {
  const UserFirstRow({Key? key}) : super(key: key);

  @override
  State<UserFirstRow> createState() => _UserFirstRowState();
}

class _UserFirstRowState extends State<UserFirstRow> {
  final userData = UserData.userList();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CircleAvatar(
              child: Image.asset(userData[index].imageName),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: userData.length),
    );
  }
}
