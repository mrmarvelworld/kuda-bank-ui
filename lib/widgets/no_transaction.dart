import 'package:flutter/material.dart';
import 'package:kuda_ui/widgets/headline_text.dart';

class NoTransaction extends StatelessWidget {
  const NoTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .25,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 60,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70), color: Colors.grey),
              child: Icon(Icons.account_balance_wallet_outlined,
                  size: 40, color: Colors.white70),
            ),
            HeadlineText(text: 'Nothing to see yet.'),
            Text(
              'Send some money and we\'ll show you',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.grey.shade600),
            ),
            Text(
              ' your recent transactions here.',
              style: TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.grey.shade600),
            )
          ],
        ),
      ),
    );
  }
}
