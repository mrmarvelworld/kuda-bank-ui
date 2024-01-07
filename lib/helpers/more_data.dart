import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreData extends ChangeNotifier {
  final List<Map<String, dynamic>> data = [
    {
      'title': 'Get Kuda Business',
      'subtitle': '',
      'icon': Icon(
        Icons.business_center,
        color: Colors.black,
      )
    },
    {
      'title': 'Statement & Reports',
      'subtitle': 'Download monthly statements',
      'icon': Icon(
        Icons.receipt,
        color: Colors.green,
      )
    },
    {
      'title': 'Saved Cards',
      'subtitle': 'Manage connected cards',
      'icon': Icon(Icons.card_travel_sharp)
    },
    {
      'title': 'Get Help',
      'subtitle': 'Get support and feedback',
      'icon': Icon(Icons.question_mark_outlined, color: Colors.red)
    },
    {
      'title': 'Security',
      'subtitle': 'Protect yourself from intruders',
      'icon': Icon(
        CupertinoIcons.padlock_solid,
        color: Colors.yellow,
      )
    },
    {
      'title': 'Referral',
      'subtitle': 'Earn money when your friends join kuda',
      'icon': Icon(CupertinoIcons.person_add_solid, color: Colors.green)
    },
    {
      'title': 'Account Limits',
      'subtitle': 'How much can you spend and receive',
      'icon': Icon(
        Icons.speed_rounded,
        color: Colors.blue,
      )
    },
    {
      'title': 'Legal',
      'subtitle': 'About our contract with you',
      'icon': Icon(Icons.receipt_outlined, color: Colors.red)
    }
  ];
}
