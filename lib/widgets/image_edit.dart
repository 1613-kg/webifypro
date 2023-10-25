import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:webifypro/services/providers/image_provider.dart';

import '../constanst.dart';
import '../services/providers/edit_panel_provider.dart';

class ImageEdit extends StatefulWidget {
  const ImageEdit({super.key});

  @override
  State<ImageEdit> createState() => _ImageEditState();
}

class _ImageEditState extends State<ImageEdit> {
  TextEditingController _imageUrlController = TextEditingController();

  int index = 0;

  void getIndex(BuildContext context) {
    index = Provider.of<EditPanelProvider>(context, listen: true).index;
  }

  final _formKey = GlobalKey<FormState>();
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Edit Your Image",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: height / 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Enter Image Url"),
                SizedBox(
                  height: 10,
                ),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (value) {
                      return _validateURL(_imageUrlController.text.trim());
                    },
                    onFieldSubmitted: (value) async {
                      if (_formKey.currentState!.validate()) {
                        Provider.of<ProductImageProvider>(context,
                                listen: false)
                            .setImageUrl(
                                _imageUrlController.text.trim(), index);
                      } else {
                        Provider.of<ProductImageProvider>(context,
                                listen: false)
                            .setImageUrl(
                                "https://w7.pngwing.com/pngs/285/84/png-transparent-computer-icons-error-super-8-film-angle-triangle-computer-icons.png",
                                index);
                      }
                    },
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.grey,
                    controller: _imageUrlController,
                    decoration: textFieldDecoration(),
                  ),
                ),
                SizedBox(
                  height: height / 12,
                ),
                genButton("Browse", () {
                  showDialogOpt(context);
                })
              ],
            ),
          ]),
        ),
      ),
    );
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

  String? _validateURL(String value) {
    final imagePattern = r'^https?://\S+\.(jpg|jpeg|png|gif)$';

    if (!RegExp(imagePattern, caseSensitive: false).hasMatch(value)) {
      return 'Please enter a valid image URL';
    }

    return null;
  }

  void pickImage(BuildContext context, ImageSource source) async {
    final file = await ImagePicker().pickImage(source: source);
    File image = File(file!.path);
  }

  showDialogOpt(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              children: [
                SimpleDialogOption(
                  onPressed: () {
                    pickImage(context, ImageSource.camera);
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.camera),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Camera"),
                    ],
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    pickImage(context, ImageSource.gallery);
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.album),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Gallery"),
                    ],
                  ),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.close),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Close"),
                    ],
                  ),
                )
              ],
            ));
  }
}
