import 'package:flutter/material.dart';

import '../constanst.dart';

class addWelcomeText extends StatelessWidget {
  const addWelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Hello",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 60,
            color: MyColors.blue4,
          ),
        ),
        RichText(
          text: TextSpan(
              text: "WELCOME TO",
              style: TextStyle(fontSize: 60, color: MyColors.blue4),
              children: [
                TextSpan(
                    text: "WEBIFYPRO",
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54))
              ]),
        ),
      ],
    );
  }
}
