import 'package:flutter/material.dart';

class EditPanelProvider extends ChangeNotifier {
  bool _isTextEdit = false;
  bool _isImageEdit = false;

  int _index = 0;

  String _type = "";

  String get type => _type;
  bool get isTextEdit => _isTextEdit;
  bool get isImageEdit => _isImageEdit;

  int get index => _index;

  void updateTextEdit(int index, String type) {
    if (_isTextEdit)
      _isTextEdit = false;
    else {
      if (_isImageEdit) _isImageEdit = false;
      _isTextEdit = true;
    }

    _index = index;
    _type = type;
    notifyListeners();
  }

  void updateImageEdit(int index) {
    if (_isImageEdit)
      _isImageEdit = false;
    else {
      if (_isTextEdit) _isTextEdit = false;
      _isImageEdit = true;
    }

    _index = index;
    notifyListeners();
  }
}
