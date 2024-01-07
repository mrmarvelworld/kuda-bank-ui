import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final String imageUrl;

  RoundedImage({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.transparent,
          width: 2.0,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(75),
        child: Image.asset(
          imageUrl,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
