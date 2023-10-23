import 'package:flutter/material.dart';
import 'package:webifypro/centeredView.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 3, 37, 65),
      child: CenteredView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Designed with love by:",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Pixel Pioneers",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "Contact us at:",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "kushagragarg13@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "kushagragarg13@gmail.com",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
