import 'package:flutter/material.dart';
import 'package:nanito/util/SystemColors.dart';

class Contact extends StatelessWidget {
  final int id;
  const Contact({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: SystemColors.primary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: CircleAvatar(
        child: Image.asset('assets/images/user-$id.png'),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
