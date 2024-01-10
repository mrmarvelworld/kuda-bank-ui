import 'package:flutter/material.dart';
import 'package:kuda_ui/widgets/kuda_button.dart';
import 'package:kuda_ui/widgets/rounded_image.dart';

class InvestTab extends StatelessWidget {
  const InvestTab({super.key});

  @override
  Widget build(BuildContext context) {
    List data = [
      'assets/images/tesla_icon.png',
      'assets/images/facebook_icon.png',
      'assets/images/amazon_icon.png',
      'assets/images/google_icon.png',
      'assets/images/apple_icon.png',
    ];
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 70),
            Container(
              height: 170,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    StockCompany(image: '${data[index]}'),
                itemCount: data.length,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Investment made easy',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              'Buy stocks with as little as \$10.',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            KudaButton(title: 'Find a Stock'),
            smallText(text: 'Kuda doesn\'t give investment adivce.Please,'),
            smallText(
                text: 'consult your legal,financial and tax advisers before  '),
            smallText(text: 'you buy stocks.'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Powered by ',
                  style: TextStyle(fontSize: 9, color: Colors.grey),
                ),
                Image.asset(
                  'assets/images/bamboo_icon.png',
                  height: 20,
                )
              ],
            )
          ]),
    );
  }
}

class smallText extends StatelessWidget {
  final String text;

  const smallText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 10, color: Colors.grey.shade400),
    );
  }
}

class StockCompany extends StatelessWidget {
  final String image;
  const StockCompany({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 100,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedImage(imageUrl: '${image}'),
          ]),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(blurRadius: 4, color: Colors.grey)]),
    );
  }
}
