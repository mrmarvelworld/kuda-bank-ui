import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';
import 'package:kuda_ui/widgets/action_bar.dart';
import 'package:kuda_ui/widgets/action_bar_icon_button.dart';

class CardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        titleSpacing: 0,
        actions: [
          Text(
            'Get Card',
            style: TextStyle(color: kPurpleDeep, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(
                  color: kPurpleDeep,
                ),
                borderRadius: BorderRadius.circular(60)),
            child: Icon(
              CupertinoIcons.add_circled_solid,
              color: kPurpleDeep,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(children: <Widget>[
            Divider(thickness: .5),
            SizedBox(height: 70),
            Container(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                'assets/images/kuda_card.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: 40),
            ActionBar(
                widget: ActionBarIconButton(
                  icon: Icon(Icons.receipt, color: Colors.green, size: 15),
                ),
                title: 'Request a Card',
                subtitle: 'We\'ill send it to you wherever you are'),
            ActionBar(
                widget: ActionBarIconButton(
                  icon: Icon(Icons.question_mark, color: Colors.blue, size: 15),
                ),
                title: 'Card FAQs',
                subtitle: 'Learn more about Kuda cards'),
          ]),
        ),
      ),
    );
  }
}
