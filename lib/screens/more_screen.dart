import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/more_data.dart';
import 'package:kuda_ui/widgets/action_bar.dart';
import 'package:kuda_ui/widgets/rounded_image.dart';

class MoreScreen extends StatelessWidget {
  static const routeName = '/more-screen';
  @override
  Widget build(BuildContext context) {
    final data = MoreData().data;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'More',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Divider(),
          ActionBar(
              title: 'Ikponmwosa Osariemen',
              subtitle: 'Account detials',
              widget: RoundedImage(imageUrl: 'assets/images/me.jpg')),
          SizedBox(height: 10),
          Container(
            height: 500,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                return ActionBar(
                    widget: data[index]['icon'],
                    title: data[index]['title'],
                    subtitle: data[index]['subtitle']);
              },
              itemCount: data.length,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign out',
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '2.00251',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
