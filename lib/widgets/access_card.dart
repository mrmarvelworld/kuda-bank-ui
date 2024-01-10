import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';

class AccessCard extends StatelessWidget {
  final Icon icon;
  final String text;
  const AccessCard({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey.shade500, blurRadius: 2)],
            color: Colors.white,
            borderRadius: BorderRadius.circular(6)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              icon,
              SizedBox(height: 5),
              Text(
                text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kPurpleDeep,
                    fontSize: 10),
              )
            ]),
      ),
    );
  }
}
