import 'package:flutter/material.dart';
import 'package:nanito/util/SystemColors.dart';
import 'package:nanito/util/SystemFonts.dart';

class TransactionCard extends StatelessWidget {
  final int id;
  const TransactionCard({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: SystemColors.primary,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/user-$id.png'),
            ),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                r'$username',
                style: SystemFonts.primary,
              ),
              Text(
                r'$at',
                style: SystemFonts.secondary,
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  r'R$ 00,00',
                  style: SystemFonts.secondary,
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
