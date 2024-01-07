import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';
import 'package:kuda_ui/screens/cards_screen.dart';
import 'package:kuda_ui/screens/home_screen.dart';
import 'package:kuda_ui/screens/more_screen.dart';
import 'package:kuda_ui/screens/pay_screen.dart';
import 'package:kuda_ui/screens/send_screen.dart';
import 'package:kuda_ui/widgets/access_card.dart';
import 'package:kuda_ui/widgets/balance_bar.dart';
import 'package:kuda_ui/widgets/cta_button.dart';
import 'package:kuda_ui/widgets/rounded_image.dart';

class Layout extends StatefulWidget {
  @override
  State<Layout> createState() => _Layout();
}

class _Layout extends State<Layout> with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> tabItems = [
    {'color': kPurpleDeep, 'text': 'Spend'},
    {'color': Colors.green, 'text': 'Save'},
    {'color': Colors.blue, 'text': 'Borrow'},
    {'color': Colors.purple, 'text': 'Invest'},
  ];
  late TabController _tabController;
  final Key tabKey = UniqueKey();
  int navigationIndex = 0;
  List<Widget> currentWidget = [
    HomeScreen(),
    SendScreen(),
    PayScreen(),
    CardsScreen(),
    MoreScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabItems.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentWidget[navigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send_outlined),
            label: 'Send',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        selectedItemColor: kPurpleDeep,
        unselectedItemColor: Colors.grey,
        currentIndex: navigationIndex,
        onTap: (index) {
          setState(() {
            navigationIndex = index;
          });
        },
        showUnselectedLabels: true,
      ),
    );
  }
}
