import 'package:chat_app/models/chat_box_data.dart';
import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  ChatBox({Key? key}) : super(key: key);
  final chatBoxData = ChatBoxData.genarateChatData();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
      child: ListView.separated(
          itemBuilder: ((context, index) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                  color: chatBoxData[index].bacgroundClr,
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 30, top: 20, bottom: 20),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: chatBoxData[index].userData.BackgroundClr,
                            shape: BoxShape.circle),
                        child: Image.asset(
                          chatBoxData[index].userData.imageName,
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(top: 24, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${chatBoxData[index].userData.firstName} ${chatBoxData[index].userData.lastName}",
                            style:
                                buildTextStyle(FontWeight.bold, Colors.black),
                          ),
                          Text(
                            "${chatBoxData[index].lastMassage}",
                            style:
                                buildTextStyle(FontWeight.normal, Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(top: 24, bottom: 50),
                    child: Text(
                      "${chatBoxData[index].time}",
                      style:
                          buildTextStyle(FontWeight.normal, Color(0xff464141)),
                    ),
                  ))
                ],
              ),
            );
          }),
          separatorBuilder: ((context, index) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              )),
          itemCount: chatBoxData.length),
    ));
  }

  TextStyle buildTextStyle(FontWeight ftw, Color clr) {
    return TextStyle(
        fontSize: 16,
        fontFamily: "OpenSans",
        color: Colors.black,
        fontWeight: ftw);
  }
}
