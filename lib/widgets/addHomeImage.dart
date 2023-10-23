import 'package:flutter/material.dart';
import 'package:webifypro/constanst.dart';

class addHomeImage extends StatelessWidget {
  const addHomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        height: 600,
        width: 600,
        child: Image.asset(
          "assets/images/home.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
