import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuda_ui/helpers/constraints.dart';
import 'package:kuda_ui/widgets/kudaTextInputField.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                QuestionMark(),
                Divider(
                  thickness: 0.5,
                ),
                SizedBox(height: 10),
                HeyThere(),
                SizedBox(height: 20),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        kudaTextInputField(
                          label: 'Email Address',
                          hint: 'youremail@gmail.com',
                        ),
                        kudaTextInputField(
                          label: 'Password',
                          hint: '. . . . .',
                          obscure: true,
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: kPurpleShade.withOpacity(.7)),
                          margin: EdgeInsets.only(top: 30),
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Sign In',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                            child: Text(
                          'Change Password',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 29, 126, 32)),
                        ))
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionMark extends StatelessWidget {
  const QuestionMark({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: kPurpleShade.withOpacity(.6),
            borderRadius: BorderRadius.circular(25),
          ),
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(right: 20, bottom: 20),
          child: Icon(Icons.question_mark, color: kPurpleDeep, size: 24),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}

class HeyThere extends StatelessWidget {
  const HeyThere({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/images/kuda_logo.png',
          height: 60,
        ),
        SizedBox(height: 4),
        Text(
          'Hey there!',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 35, color: Colors.black87),
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }
}
