import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PayData extends ChangeNotifier {
  Map<String, List<Map<String, dynamic>>> _data = {
    'essentials': [
      {
        'title': 'Airtime',
        'icon': Icon(
          Icons.call,
          color: Colors.yellow,
        )
      },
      {
        'title': 'Internet',
        'icon': Icon(
          Icons.wifi,
          color: Colors.red,
        )
      },
      {
        'title': 'TV',
        'icon': Icon(
          Icons.tv,
          color: Colors.green,
        )
      },
      {
        'title': 'Electricity',
        'icon': Icon(
          CupertinoIcons.lightbulb_fill,
          color: Colors.red,
        )
      },
    ],
    'cardless': [
      {
        'title': 'Pay ID',
        'icon': Icon(
          Icons.mark_unread_chat_alt_sharp,
          color: Colors.blue,
        )
      },
      {
        'title': 'USSD',
        'icon': Icon(
          Icons.phone_in_talk,
          color: Colors.yellow,
        )
      },
      {
        'title': 'POS',
        'icon': Icon(
          Icons.point_of_sale,
          color: Colors.red,
        )
      },
      {
        'title': 'ATM',
        'icon': Icon(
          Icons.atm,
          color: Colors.green,
        )
      },
      {
        'title': 'Business',
        'icon': Icon(
          Icons.business_center,
          color: Colors.black,
        )
      },
    ],
    'lifestyle': [
      {
        'title': 'Betting',
        'icon': Icon(
          Icons.sports_soccer,
          color: Colors.blue,
        )
      },
      {
        'title': 'Gift Card',
        'icon': Icon(
          Icons.card_giftcard,
          color: Colors.yellow,
        )
      },
      {
        'title': 'Transport',
        'icon': Icon(
          CupertinoIcons.car_detailed,
          color: Colors.red,
        )
      },
    ],
  };

  get data {
    return _data;
  }
}
