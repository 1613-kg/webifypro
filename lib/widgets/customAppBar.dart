import 'package:flutter/material.dart';
import 'package:webifypro/constanst.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    double width = getWidth(context);
    return Material(
      elevation: 5,
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          //color: Colors.amber,
        ),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("WebifyPro"),
            Text("Home"),
            if (width > 700)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  genButton("Login", () {}),
                  SizedBox(
                    width: width / 60,
                  ),
                  genButton("Sign Up", () {}),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
