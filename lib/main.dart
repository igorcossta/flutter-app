import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nanito/screen/base_screen.dart';
import 'package:nanito/screen/login_screen.dart';
import 'package:nanito/util/SystemColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: SystemColors.primary,
    ));
    return MaterialApp(
      title: 'Bank App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/authentication',
      routes: <String, WidgetBuilder>{
        '/authentication': (context) => LoginScreen(),
        '/': (context) => BaseScreen(),
      },
    );
  }
}
