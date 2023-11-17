import 'package:flutter/material.dart';
import 'package:profile/page/class.dart';
import 'package:image_picker/image_picker.dart';

class ProfileProvider with ChangeNotifier {
  final List<Information> _list = [];
  List<Information> get list => _list;

  void addList(Information val) {
    _list.add(val);
    notifyListeners();
  }

  String _name = 'Your Name';
  String? get name => _name;
  String? _profation = 'Profation';
  String? get profation => _profation;
  String? _gmail = 'Your Gmail';
  String? get gmail => _gmail;
  String? _number = 'Your Number';
  String? get number => _number;
  String? _location = 'Location';
  String? get location => _location;
  String? _varcity = 'Varcity Name, City';
  String? get varcity => _varcity;
  
  

  void addName(String val) {
    _name = val;
    notifyListeners();
  }

  void addProfation(String val) {
    _profation = val;
    notifyListeners();
  }

  void addGmail(String val) {
    _gmail = val;
    notifyListeners();
  }

  void addNumber(String val) {
    _number = val;
    notifyListeners();
  }

  void addLocation(String val) {
    _location = val;
    notifyListeners();
  }

  void addVarcity(String val) {
    _varcity = val;
    notifyListeners();
  }

  

  String? _imagePath;
  String? get imagePath => _imagePath;
  bool _isCompleted = false;
  bool get isCompleted => _isCompleted;

  Future<void> imagePicker() async {
    final _pickImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (_pickImage != null) {
      _imagePath = _pickImage.path; 
      _isCompleted = true;
      notifyListeners();
    } 
  }
}
