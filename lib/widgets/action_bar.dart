import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';

class ActionBar extends StatelessWidget {
  final Widget widget;
  final String title;
  final String subtitle;

  const ActionBar({
    required this.widget,
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                widget,
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: kPurpleDeep),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 9,
                          color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            Icon(
              Icons.navigate_next_outlined,
              size: 30,
              color: Colors.grey.shade600,
            )
          ]),
    );
  }
}
