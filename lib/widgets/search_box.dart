import 'package:flutter/material.dart';
import 'package:webifypro/constanst.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController _searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = getWidth(context);
    return Container(
      padding: EdgeInsets.all(10),
      width: width / 3,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: Colors.black38)),
      child: Row(
        children: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          FittedBox(
            child: SizedBox(
              width: width / 4,
              child: TextField(
                cursorColor: Colors.black38,
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: "Search your products",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
