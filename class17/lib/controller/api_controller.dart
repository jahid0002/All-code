import 'dart:convert';

import 'package:class17/model/note_model.dart';
import 'package:class17/service/api_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiController extends GetxController {
  ApiService service = ApiService();
  List<NoteModel> list = [];
  bool _loding = true;
  bool get loding => _loding;
  @override
  void onInit() {
    super.onInit();

    getData();
  }

  Future<void> getData() async {
    _loding = false;
    update();
    try {
      http.Response response = await service.getResponse();
      if (response.statusCode == 200) { 
        _loding = true; 
        var json = jsonDecode(response.body);
        for (var element in json) {
          list.add(NoteModel.fromJson(element));
          
          update();
        }
      }
    } catch (e) {
      _loding = true;
      print(e.toString());
      update();
    }
  }
}
