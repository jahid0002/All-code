import 'dart:convert';

import 'package:class18/page/home/note_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  List<NoteModel> dataList = [];
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  bool _loading = false;
  bool get loading => _loading;

  void getData() async {
    final service = HomeService();
    try {
      _loading = true;
      update();
      http.Response response = await service.getApi();

      if (response.statusCode == 200) { 
        var json = jsonDecode(response.body);
        List<dynamic> list = json['data'];
        list.forEach((element) {
          dataList.add(NoteModel.fromJson(element));
          _loading = false;
          update();
        });
      }
    } catch (e) {
      _loading = false;
      update();
      print(e.toString());
    }
  }
}

class HomeService {
  final String url = 'https://reqres.in/api/users?page=2';

  Future<http.Response> getApi() async {
    http.Response response = await http.get(Uri.parse(url));

    return response;
  }
}
