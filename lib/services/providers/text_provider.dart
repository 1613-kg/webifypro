import 'package:flutter/material.dart';

class TextProvider extends ChangeNotifier {
  List<List<Object>> _newTextDetails = [
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
    ["Name", 12, Colors.black],
  ];

  List<List<Object>> _newPriceDetails = [
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
    ["Price", 12, Colors.black],
  ];

  List<List<Object>> get newTextDetails => _newTextDetails;
  List<List<Object>> get newPriceDetails => _newPriceDetails;

  void updateText(String text, int index) {
    _newTextDetails[index][0] = text;
    notifyListeners();
  }

  void updateTextSize(double size, int index) {
    _newTextDetails[index][1] = size;
    notifyListeners();
  }

  void updateTextColor(Color pickedColor, int index) {
    _newTextDetails[index][2] = pickedColor;
    notifyListeners();
  }

  void updatePrice(double price, int index) {
    _newPriceDetails[index][0] = price;
    notifyListeners();
  }

  void updatePriceSize(double size, int index) {
    _newPriceDetails[index][1] = size;
    notifyListeners();
  }

  void updatePriceColor(Color pickedColor, int index) {
    _newPriceDetails[index][2] = pickedColor;
    notifyListeners();
  }
}
