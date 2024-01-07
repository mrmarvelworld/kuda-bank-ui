import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';
import 'package:kuda_ui/widgets/balance_bar.dart';

class BorrowTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(children: <Widget>[
          BalanceBar(
            title: 'You Owe',
            balance: '0.0',
            color: Colors.blueAccent,
          ),
          SizedBox(height: 20),
          BorrowCard(
            title: 'Loan',
            subtitle1: 'Apply for a low-interest  loan, get money in ',
            subtitle2: 'minutes.',
            show: true,
            titleColor: kPurpleDeep.withOpacity(.6),
            subtitleColor: Colors.grey,
            icon: Icon(
              Icons.credit_card,
              color: Colors.blueAccent,
              size: 50,
            ),
          ),
          BorrowCard(
              title: 'Overdraft',
              subtitle1: 'Spend when your account balance is low and ',
              subtitle2: 'repay whenever you get paid.',
              icon: Icon(
                Icons.umbrella_rounded,
                color: Colors.greenAccent,
                size: 50,
              )),
          BorrowCard(
              title: 'Salary Loan',
              subtitle1: 'Get a salary-based loan quickly at an affordable  ',
              subtitle2: 'interest rate.',
              icon: Icon(
                Icons.wallet,
                color: Colors.blue,
                size: 50,
              )),
        ]),
      ),
    );
  }
}

class BorrowCard extends StatelessWidget {
  final String title;

  final String subtitle1;
  final String subtitle2;
  final bool show;
  final Icon icon;
  final Color titleColor;
  final Color subtitleColor;
  const BorrowCard({
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.icon,
    this.show = false,
    this.titleColor = kPurpleDeep,
    this.subtitleColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 2)],
        borderRadius: BorderRadius.circular(5),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (show)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      'Coming Soon',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(title,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: titleColor)),
                    Text(
                      subtitle1,
                      softWrap: true,
                      maxLines: 2,
                      style: TextStyle(color: subtitleColor, fontSize: 12),
                    ),
                    Text(subtitle2,
                        style: TextStyle(color: subtitleColor, fontSize: 12))
                  ],
                ),
                icon
              ],
            )
          ]),
    );
  }
}
