import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';
import 'package:kuda_ui/widgets/access_card.dart';
import 'package:kuda_ui/widgets/action_bar.dart';
import 'package:kuda_ui/widgets/action_bar_icon_button.dart';
import 'package:kuda_ui/widgets/headline_text.dart';
import 'package:kuda_ui/widgets/no_transaction.dart';
import 'package:kuda_ui/widgets/task_button.dart';

class SendScreen extends StatelessWidget {
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Send Money',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey.shade500)],
                color: kPurpleShade.withOpacity(.25),
                borderRadius: BorderRadius.circular(55)),
            child: Icon(
              Icons.search,
              color: kPurpleDeep,
              size: 15,
            ),
          ),
          SizedBox(width: 20)
        ],
        elevation: 0,
        centerTitle: true,
        titleSpacing: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Divider(thickness: .5),
                SizedBox(height: 10),
                HeadlineText(text: 'Beneficiaries'),
                SizedBox(height: 10),
                TaskButton(
                    title: 'Send to Beneficiaries',
                    subtitle: 'Add a beneficiary to get started',
                    buttonText: 'Add'),
                SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Free transfers to other banks ',
                        style: TextStyle(
                            fontSize: 10, color: Colors.grey.shade600),
                      ),
                      TextSpan(
                        text: '2',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ActionBar(
                  title: 'Send to @username',
                  subtitle: 'Send to any Kuda account for free',
                  widget: Container(
                    width: 25,
                    height: 25,
                    child: Image.asset(
                      'assets/images/kuda_logo.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                ActionBar(
                  title: 'Send to Bank Account',
                  subtitle: 'Send to a local bank account',
                  widget: ActionBarIconButton(
                    icon: Icon(Icons.send, color: Colors.green, size: 30),
                  ),
                ),
                SizedBox(height: 10),
                HeadlineText(text: 'Recents'),
                SizedBox(height: 30),
                NoTransaction(),
                SizedBox(height: 0),
                HeadlineText(text: 'Friends on Kuda'),
                SizedBox(height: 5),
                TaskButton(
                    title: 'Sync your Contacts',
                    subtitle: 'Free payments to contacts',
                    buttonText: 'connect')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
