import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AboutUsInfoText extends StatelessWidget {
  String title;
  String content;
  List<String> points;
  AboutUsInfoText(
      {super.key,
      required this.title,
      required this.content,
      required this.points});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 300,
          height: 30,
          child: AutoSizeText(title),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 300,
          height: 100,
          child: AutoSizeText(content),
        ),
        SizedBox(
          height: 20,
        ),
        PointsListWidget(points[0]),
        SizedBox(
          height: 10,
        ),
        PointsListWidget(points[0]),
        SizedBox(
          height: 10,
        ),
        PointsListWidget(points[0]),
        SizedBox(
          height: 10,
        ),
        PointsListWidget(points[0]),
      ],
    );
  }

  Widget PointsListWidget(String point) {
    return Row(
      children: [
        Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        SizedBox(
          width: 10,
        ),
        AutoSizeText(point),
      ],
    );
  }
}
