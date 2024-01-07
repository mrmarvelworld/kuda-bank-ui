import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';

class TaskButton extends StatelessWidget {
  const TaskButton(
      {required this.title, required this.subtitle, required this.buttonText});
  final String title;
  final String subtitle;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 2)],
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
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
                      fontSize: 10,
                      color: Colors.grey),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: kPurpleShade.withOpacity(.6),
                  borderRadius: BorderRadius.circular(4)),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: Text(
                buttonText,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: kPurpleDeep),
              ),
            )
          ]),
    );
  }
}
