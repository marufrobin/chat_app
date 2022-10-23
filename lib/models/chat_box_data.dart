import 'package:chat_app/models/user_data.dart';
import 'package:flutter/material.dart';

class ChatBoxData {
  UserData userData;
  Color bacgroundClr;
  String lastMassage;
  String time;

  ChatBoxData(this.userData, this.bacgroundClr, this.lastMassage, this.time);

  static List<ChatBoxData> genarateChatData() {
    var User;
    return [
      ChatBoxData(
          user[0], Color(0xffFCF6F6), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[1], Color(0xffFFF3EA), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[2], Color(0xffE8F9E4), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[3], Color(0xffE6EFF9), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[4], Color(0xffFDECFF), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[5], Color(0xffFCF6F6), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[6], Color(0xffFDECFF), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[0], Color(0xffFCF6F6), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[1], Color(0xffFFF3EA), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[2], Color(0xffE8F9E4), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[3], Color(0xffE6EFF9), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[4], Color(0xffFDECFF), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(
          user[5], Color(0xffFCF6F6), "Hello! How are you?", "12:30 PM"),
      ChatBoxData(user[6], Color(0xffFDECFF), "Hello! How are you?", "12:30 PM")
    ];
  }
}

var user = UserData.userList();
