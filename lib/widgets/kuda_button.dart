import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';

class KudaButton extends StatelessWidget {
  final String title;
  final Color color;
  const KudaButton({
    super.key,
    this.color = kPurpleDeep,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Text(
          title,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        )
      ]),
    );
  }
}
