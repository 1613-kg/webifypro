import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webifypro/constanst.dart';
import 'package:webifypro/services/providers/edit_panel_provider.dart';
import 'package:webifypro/services/providers/image_provider.dart';

import 'package:webifypro/services/providers/text_provider.dart';

class ProductWidget extends StatefulWidget {
  int index;
  ProductWidget({
    super.key,
    required this.index,
  });

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    double width = getWidth(context);
    double height = getHeight(context);
    return Material(
      elevation: 3,
      child: Container(
        padding: EdgeInsets.all(10),
        // decoration:
        //     BoxDecoration(border: Border.all(width: 1, color: Colors.black26)),
        child: Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Provider.of<EditPanelProvider>(context, listen: false)
                      .updateImageEdit(widget.index);
                },
                child: Consumer<ProductImageProvider>(
                  builder: (context, value, child) {
                    return Image.network(
                      value.imageUrl[widget.index],
                      height: height / 8,
                      width: width / 6,
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
            ),
            FittedBox(
              child: InkWell(
                onTap: () {
                  Provider.of<EditPanelProvider>(context, listen: false)
                      .updateTextEdit(widget.index, "Name");
                },
                child: Consumer<TextProvider>(
                  builder: (context, value, child) {
                    return Text(
                      value.newTextDetails[widget.index][0] as String,
                      style: TextStyle(
                          fontSize:
                              value.newTextDetails[widget.index][1] as double,
                          color:
                              value.newTextDetails[widget.index][2] as Color),
                    );
                  },
                ),
              ),
            ),
            FittedBox(
              child: InkWell(
                onTap: () {
                  Provider.of<EditPanelProvider>(context, listen: false)
                      .updateTextEdit(widget.index, "Price");
                },
                child: Consumer<TextProvider>(
                  builder: (context, value, child) {
                    return Text(
                      "\$  ${value.newPriceDetails[widget.index][0]}",
                      style: TextStyle(
                          fontSize:
                              value.newPriceDetails[widget.index][1] as double,
                          color:
                              value.newPriceDetails[widget.index][2] as Color),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              child: genButton("Add To Cart", () {}),
            )
          ],
        ),
      ),
    );
  }
}
