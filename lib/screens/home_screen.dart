import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';
import 'package:kuda_ui/helpers/pay_data.dart';
import 'package:kuda_ui/widgets/access_card.dart';
import 'package:kuda_ui/widgets/balance_bar.dart';
import 'package:kuda_ui/widgets/cta_button.dart';
import 'package:kuda_ui/widgets/rounded_image.dart';
import 'package:kuda_ui/widgets/tabs/borrow_tab.dart';
import 'package:kuda_ui/widgets/tabs/invest_tab.dart';
import 'package:kuda_ui/widgets/tabs/save_tab.dart';
import 'package:kuda_ui/widgets/tabs/spend_tab.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> tabItems = [
    {'color': kPurpleDeep, 'text': 'Spend'},
    {'color': Colors.green, 'text': 'Save'},
    {'color': Colors.blue, 'text': 'Borrow'},
    {'color': Colors.purple, 'text': 'Invest'},
  ];
  List tabContent = [
    SpendTab(),
    SaveTab(),
    BorrowTab(),
    InvestTab(),
  ];
  late TabController _tabController;
  final Key tabKey = UniqueKey();
  int navigationIndex = 0;
  var _tabColor;

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
      appBar: AppBar(
        actions: [
          Icon(Icons.message, color: kPurpleDeep, size: 22),
          SizedBox(width: 20)
        ],
        title: Container(
          child: Row(
            children: <Widget>[
              RoundedImage(imageUrl: 'assets/images/me.jpg'),
              SizedBox(width: 10),
              Text(
                'Hi, Marvel',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          labelColor: tabItems[navigationIndex]['color'],
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.symmetric(horizontal: 7),
          indicator: null,
          indicatorColor: Colors.transparent,
          tabs: List.generate(
            tabItems.length,
            (index) => Tab(
              child: Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 10, color: Colors.white70)
                      ]),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  child: Text(
                    tabItems[index]['text'],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: tabItems[index]['color']),
                  )),
            ),
          ),
        ),
      ),
      body: DefaultTabController(
        key: tabKey,
        length: tabItems.length,
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: List.generate(
                  tabItems.length,
                  (index) => tabContent[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
