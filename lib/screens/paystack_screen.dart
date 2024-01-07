import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';

class PayStackScreen extends StatefulWidget {
  const PayStackScreen({super.key});

  @override
  State<PayStackScreen> createState() => _PayStackScreenState();
}

class _PayStackScreenState extends State<PayStackScreen> {
  final String secret = 'pk_test_5255aae0854404f0ba2711389eaed42abf3eb492';
  final plugin = PaystackPlugin();
  String message = '';

  @override
  void initState() {
    // TODO: implement initState
    plugin.initialize(publicKey: secret);
    super.initState();
  }

  void makePayment() async {
    int price = 500 * 100;
    Charge charge = Charge()
      ..amount = price
      ..reference = 'ref-${DateTime.now()}'
      ..email = 'ikpmarvel'
      ..currency = 'NGN';

    CheckoutResponse response = await plugin.checkout(context, charge: charge);

    if (response.status == 200) {
      message = response.message;
      Navigator.pop(context);
    } else {
      print(response.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            makePayment();
          },
          child: Container(
            color: Colors.blue,
            child: Text(
              'pay 500',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
        ),
      ),
    );
  }
}
