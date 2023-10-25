import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webifypro/constanst.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = getWidth(context);
    double height = getHeight(context);
    return SingleChildScrollView(
      child: Container(
        height: height / 6,
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white70,
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black54, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/home.jpg",
              width: width / 6,
              height: height / 8,
              fit: BoxFit.contain,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Name"),
                Text("Price"),
              ],
            ),
            SizedBox(
              width: width / 10,
              height: 120,
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        (true)
                            ? InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                        color: Colors.white30, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(Icons.delete),
                                ),
                              )
                            : InkWell(
                                onTap: () {},
                                child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                          color: Colors.white30, width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.remove)),
                              ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.white30, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: AutoSizeText(
                            "12",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border:
                                    Border.all(color: Colors.white30, width: 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(Icons.add)),
                        ),
                      ],
                    ),
                    genButton("Buy Now", () {})
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
