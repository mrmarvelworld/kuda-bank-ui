import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';

class CTAButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color color;
  final Color bgColor;

  const CTAButton({
    required this.icon,
    required this.text,
    this.color = kPurpleDeep,
    this.bgColor = Colors.white,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .4,
      // width: double.maxFinite,
      padding: EdgeInsets.only(left: 4, right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey.shade500, blurRadius: 2)],
          color: bgColor,
          borderRadius: BorderRadius.circular(6)),
      child: Row(children: <Widget>[
        icon,
        SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.bold, color: color),
        ),
      ]),
    );
  }
}
