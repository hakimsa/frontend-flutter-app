// ignore: file_names
import 'package:chaty/Views/chat_page_screen.dart';
import 'package:chaty/Views/homepage.dart';
import 'package:chaty/Views/login_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getaplicationroute() {
  return <String, WidgetBuilder>{
    Login_page.pagename: (_) => Login_page(),
    ChatPage.pagename: (_) => ChatPage(),
    Homepage.pagename: (_) => Homepage()
  };
}
