import 'package:flutter/material.dart';
import 'package:nanito/util/CustomClipper.dart';
import 'package:nanito/util/SystemFonts.dart';
import 'package:nanito/util/SystemColors.dart';
import 'package:nanito/widget/contact.dart';
import 'package:nanito/widget/info_card.dart';
import 'package:nanito/widget/transaction_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          // cabeçalho
          ClipPath(
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                color: SystemColors.primary,
                image: DecorationImage(
                  image: AssetImage('assets/images/wallpaper.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  r'$username',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 32.0,
                  ),
                ),
              ),
            ),
            clipper: CustomClipPath(),
          ),
          // contatos do usuário
          Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            height: 80,
            child: ListView.separated(
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () => print(i),
                  child: Contact(id: i),
                );
              },
              separatorBuilder: (_, i) => SizedBox(width: 8),
              itemCount: 8,
              scrollDirection: Axis.horizontal,
            ),
          ),
          // informações da conta do usuário
          SizedBox(height: 20),
          InfoCard(
            cardTitle: 'Conta',
            icon: Icons.attach_money_rounded,
            cardDesc: 'Saldo disponível',
            value: r'R$ 438.593,98',
          ),
          // transações recentes
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Transações Recentes',
                style: SystemFonts.sectionTitle,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: ListView.separated(
              itemBuilder: (_, i) => TransactionCard(id: i),
              separatorBuilder: (_, i) => Divider(),
              itemCount: 8,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
        ],
      ),
    );
  }
}
