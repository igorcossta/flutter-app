import 'package:flutter/material.dart';
import 'package:nanito/screen/home_screen.dart';
import 'package:nanito/util/SystemColors.dart';
import 'package:nanito/widget/bottom_nav_bar.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SystemColors.background,
        body: HomeScreen(),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
