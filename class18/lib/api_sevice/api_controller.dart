import 'package:class18/api_sevice/api_service.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiController extends GetxController {
  bool _loading = false;
  bool get loading => _loading;

  ApiService service = ApiService();

  void sendData(String name, String job) async {
    _loading = true;
    update();
    http.Response response = await service.postApi(name, job);
    if (response.statusCode == 201) {
      _loading = false;
      update();
      print(response.body);
    }
  }
}