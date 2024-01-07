import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';
import 'package:kuda_ui/widgets/balance_bar.dart';

class SaveTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            BalanceBar(
                title: 'NGN Savings', balance: '0.0', color: Colors.green),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
                      ]),
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 40),
                  child: Row(
                    children: <Widget>[
                      Icon(CupertinoIcons.add_circled_solid, color: kGreen),
                      SizedBox(width: 5),
                      Text(
                        'Add Pocket',
                        style: TextStyle(
                            color: kGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Pockets',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'Put money away daily,weekly,monthly or as',
              style: TextStyle(color: Colors.grey.shade600),
            ),
            Text('you spend.', style: TextStyle(color: Colors.grey.shade600)),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 300,
              child: Image.asset(
                'assets/images/nigeria_piggy_bank.png',
                // fit: BoxFit.fitHeight,
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: kPurpleDeep, borderRadius: BorderRadius.circular(5)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Save Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.white),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
