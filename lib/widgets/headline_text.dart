import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  final String text;
  const HeadlineText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold));
  }
}
