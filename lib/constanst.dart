import 'package:flutter/material.dart';

getHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

getWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

Widget genButton(String text, Function() onclick) {
  return ElevatedButton(
    child: Text(text),
    onPressed: onclick,
    style: ElevatedButton.styleFrom(shape: LinearBorder()),
  );
}

class MyColors {
  static const Color white1 = Color(0xFFF8FBFF);
  static const Color white2 = Color(0xFFFCFDFD);

  static const Color blue1 = Color(0xFF00b0ff);
  static const Color blue2 = Color(0xFF0081cb);
  static const Color blue3 = Color(0xFF4fc3f7);

  static const Color blue4 = Color(0xFF8591B0);
}
