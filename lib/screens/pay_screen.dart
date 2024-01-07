import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';
import 'package:kuda_ui/helpers/pay_data.dart';
import 'package:kuda_ui/widgets/access_card.dart';
import 'package:kuda_ui/widgets/headline_text.dart';

class PayScreen extends StatelessWidget {
  static const routeName = ' /pay-screen';

  @override
  Widget build(BuildContext context) {
    final data = PayData().data;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pay',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey.shade500)],
                color: kPurpleShade.withOpacity(.25),
                borderRadius: BorderRadius.circular(55)),
            child: Icon(
              Icons.search,
              color: kPurpleDeep,
              size: 15,
            ),
          ),
          SizedBox(width: 20)
        ],
        elevation: 0,
        centerTitle: true,
        titleSpacing: 0,
      ),
      body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Divider(),
                  HeadlineText(text: 'Essentials'),
                  Container(
                    height: 120,
                    width: double.infinity,
                    margin: EdgeInsets.all(0),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data['essentials']!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        final item = data['essentials']?[index];
                        return AccessCard(
                          text: item!['title'],
                          icon: item!['icon'],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  HeadlineText(text: 'Cardless Payments'),
                  Container(
                    height: 220,
                    width: double.infinity,
                    margin: EdgeInsets.all(0),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data['cardless']!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        final item = data['cardless']?[index];
                        return AccessCard(
                          text: item!['title'],
                          icon: item!['icon'],
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  HeadlineText(text: 'Lifestyle'),
                  Container(
                    height: 120,
                    width: double.infinity,
                    margin: EdgeInsets.all(0),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: data['lifestyle']!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        final item = data['lifestyle']?[index];
                        return AccessCard(
                          text: item!['title'],
                          icon: item!['icon'],
                        );
                      },
                    ),
                  ),
                ]),
          )),
    );
  }
}

Widget buildGridItem(String title, Icon icon) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(height: 8.0),
        Text(title),
      ],
    ),
  );
}
