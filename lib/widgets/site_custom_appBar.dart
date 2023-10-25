import 'package:flutter/material.dart';
import 'package:webifypro/screens/cart_screen.dart';
import 'package:webifypro/widgets/search_box.dart';

import '../constanst.dart';

class SiteCustomAppBar extends StatelessWidget {
  const SiteCustomAppBar({super.key});

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
            SearchBox(),
            if (width > 700)
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(width: 1, color: Colors.black38)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Cart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        width: width / 100,
                      ),
                      Icon((Icons.shopping_cart))
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
