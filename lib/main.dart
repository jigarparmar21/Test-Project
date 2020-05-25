import 'package:flutter/material.dart';

import 'chat_book.dart';

// import 'check.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //Remove a Debug Title
        title: 'Flutter Demo',
        home: chatbookApp());
  }
}
