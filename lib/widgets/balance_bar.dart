import 'package:flutter/material.dart';

class BalanceBar extends StatelessWidget {
  final String balance;
  final String title;
  final String belowText;
  final Color color;
  const BalanceBar({
    super.key,
    this.balance = '0.00',
    required this.title,
    this.belowText = '',
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: [
                Image.asset('assets/images/nigeria-flag-icon.webp', height: 15),
                SizedBox(width: 5),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade500),
                ),
              ],
            ),
            Text(balance,
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: color)),
            Text(belowText,
                style: TextStyle(fontSize: 7, fontWeight: FontWeight.w300))
          ],
        ),
        Spacer(),
        Container(
          child: Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              color: Colors.grey.shade200),
        )
      ],
    );
  }
}
