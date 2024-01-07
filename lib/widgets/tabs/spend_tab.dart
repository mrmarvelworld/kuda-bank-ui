import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';
import 'package:kuda_ui/helpers/pay_data.dart';
import 'package:kuda_ui/widgets/access_card.dart';
import 'package:kuda_ui/widgets/balance_bar.dart';
import 'package:kuda_ui/widgets/cta_button.dart';
import 'package:kuda_ui/widgets/rounded_image.dart';

class SpendTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = PayData().data;
    return SingleChildScrollView(
        child: Container(
      margin: EdgeInsets.only(top: 25),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          BalanceBar(
            balance: '6,700,000',
            belowText: 'Last updated a few sec ago',
            title: 'Nigeria Naira',
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CTAButton(
                text: 'Transfer',
                icon: Icon(
                  CupertinoIcons.arrow_up,
                  color: kPurpleDeep,
                ),
              ),
              CTAButton(
                text: 'Add Money',
                icon: Icon(
                  CupertinoIcons.add_circled_solid,
                  color: kPurpleDeep,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.grey.shade500, blurRadius: 2)
            ], color: Colors.white, borderRadius: BorderRadius.circular(6)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RoundedImage(imageUrl: 'assets/images/kuda_svg.png'),
                  Column(
                    children: <Widget>[
                      Text(
                        'Setup Your Account',
                        style: TextStyle(
                            color: kPurpleDeep,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
                          'Complete your account setup and \n explore Kuda\'s  features ',
                          style: TextStyle(
                              // color: Colors.grey,
                              fontWeight: FontWeight.w300,
                              fontSize: 10)),
                    ],
                  ),
                  RoundedImage(imageUrl: 'assets/images/kuda_logo.png'),
                ]),
          ),
          SizedBox(height: 10),
          //quick access
          Container(
            child: Column(children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Quick Access',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500),
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: kPurpleDeep),
                  )
                ],
              ),
              ClipRect(
                child: Container(
                  width: double.infinity,
                  height: 230,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.horizontal,
                    itemCount: data['essentials']!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      final item = data['essentials'][index];
                      return AccessCard(
                        text: item!['title'],
                        icon: item!['icon'],
                      );
                    },
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    ));
  }
}
