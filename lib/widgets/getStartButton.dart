import 'package:flutter/material.dart';
import 'package:webifypro/constanst.dart';
import 'package:webifypro/screens/home_page.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: 250,
        child: genButton("Get Started", () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        }));
  }
}
