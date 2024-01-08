import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PutController extends GetxController {
  void putData(String name, String job, int index) async {
    http.Response response = await putApi(name, job, index);
    if (response.statusCode == 200) {
      print(response.body);
    }
  }

  Future<http.Response> putApi(String name, String job, int index) async {
    final url = 'https://reqres.in/api/users/${index.toString()}';
    Map<String, dynamic> data = {
      'name': name,
      'job': job,
    };
    http.Response response =
        await http.put(Uri.parse(url), body: jsonEncode(data));
    return response;
  }

  Future<void> deleteData(String index) async {
    http.Response response = await deleteApi(index);
    if (response.statusCode == 204) {
      print('delete index');
    }
  }

  Future<http.Response> deleteApi(String index) async {
    final String uri = 'https://reqres.in/api/users/$index';

    http.Response response = await http.delete(Uri.parse(uri));
    return response;
  }
}
