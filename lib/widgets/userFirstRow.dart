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
            return Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: userData[index].BackgroundClr,
                    shape: BoxShape.circle),
                child: Image.asset(
                  userData[index].imageName,
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ));
          },
          separatorBuilder: (context, index) => SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
          itemCount: userData.length),
    );
  }
}
