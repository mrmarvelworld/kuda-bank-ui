import 'package:flutter/material.dart';

class ActionBarIconButton extends StatelessWidget {
  final Icon icon;
  const ActionBarIconButton({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 35,
        padding: EdgeInsets.all(2),
        height: 35,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.grey.shade300,
            ),
            borderRadius: BorderRadius.circular(4),
            boxShadow: [BoxShadow(blurRadius: 3, color: Colors.grey.shade500)]),
        child: icon);
  }
}
