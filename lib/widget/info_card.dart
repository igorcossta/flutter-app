import 'package:flutter/material.dart';
import 'package:nanito/util/SystemFonts.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String cardTitle;
  final String cardDesc;
  final String value;

  const InfoCard(
      {Key? key,
      required this.icon,
      required this.cardTitle,
      required this.cardDesc,
      required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 32,
                color: Colors.grey,
              ),
              SizedBox(width: 8),
              Text(
                '$cardTitle',
                style: SystemFonts.secondary,
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Text(
                '$cardDesc',
                style: SystemFonts.secondary,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                '$value',
                style: SystemFonts.strong,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
