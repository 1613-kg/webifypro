import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:webifypro/services/providers/edit_panel_provider.dart';
import 'package:webifypro/services/providers/text_provider.dart';

import '../constanst.dart';

class EditText extends StatefulWidget {
  EditText({
    super.key,
  });

  @override
  State<EditText> createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  TextEditingController text = TextEditingController();
  TextEditingController fontSize = TextEditingController();
  // create some values
  Color pickerColor = Color(0xff443a49);

  int index = 0;
  String type = "";

  void getIndex(BuildContext context) {
    index = Provider.of<EditPanelProvider>(context, listen: true).index;
    type = Provider.of<EditPanelProvider>(context, listen: true).type;
  }

  @override
  Widget build(BuildContext context) {
    double width = getWidth(context);
    double height = getHeight(context);
    getIndex(context);
    return Material(
      elevation: 5,
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
          ),
          width: width / 6,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Edit your text",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: height / 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Edit text"),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      if (type == "Name") {
                        Provider.of<TextProvider>(context, listen: false)
                            .updateText(text.text, index);
                      } else {
                        double price = double.parse(text.text.trim());
                        Provider.of<TextProvider>(context, listen: false)
                            .updatePrice(price, index);
                      }
                    },
                    cursorColor: Colors.grey,
                    controller: text,
                    decoration: textFieldDecoration(),
                  ),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Enter font size"),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      double size = double.parse(fontSize.text.trim());
                      (type == "Name")
                          ? Provider.of<TextProvider>(context, listen: false)
                              .updateTextSize(size, index)
                          : Provider.of<TextProvider>(context, listen: false)
                              .updatePriceSize(size, index);
                    },
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.grey,
                    controller: fontSize,
                    decoration: textFieldDecoration(),
                  ),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              genButton("Change Color", () {
                showColorPicker();
              })
            ],
          ),
        ),
      ),
    );
  }

  showColorPicker() {
    return showDialog(
        builder: (context) => AlertDialog(
              title: Text('Pick a color!'),
              content: SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: pickerColor,
                  onColorChanged: (value) {
                    setState(() {
                      pickerColor = value;
                      (type == "Name")
                          ? Provider.of<TextProvider>(context, listen: false)
                              .updateTextColor(pickerColor, index)
                          : Provider.of<TextProvider>(context, listen: false)
                              .updatePriceColor(pickerColor, index);
                    });
                  },
                ),
              ),
            ),
        context: context);
  }

  InputDecoration textFieldDecoration() {
    return InputDecoration(
        contentPadding: EdgeInsets.all(5),
        //helperText: titleText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black26)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black26),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red),
        ),
        border: InputBorder.none);
  }
}
