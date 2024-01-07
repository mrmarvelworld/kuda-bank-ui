import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kudaTextInputField extends StatefulWidget {
  final String label;
  final String hint;
  final bool obscure;
  final bool onFocus;

  const kudaTextInputField({
    super.key,
    required this.label,
    required this.hint,
    this.obscure = false,
    this.onFocus = false,
  });

  @override
  State<kudaTextInputField> createState() => _kudaTextInputFieldState();
}

class _kudaTextInputFieldState extends State<kudaTextInputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '${widget.label}',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          TextFormField(
            obscureText: widget.obscure,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                suffixIcon: Icon(
                  CupertinoIcons.eye_slash,
                  color: widget.obscure ? Colors.grey : Colors.transparent,
                ),
                iconColor: Colors.grey,
                hintText: widget.hint,
                filled: true,
                fillColor: Colors.purple.shade100,
                focusColor: Colors.deepPurple,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 6))),
            onTap: () {},
          ),
          SizedBox(height: 3)
        ]);
  }
}
