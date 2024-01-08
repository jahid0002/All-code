import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  final String url = "https://reqres.in/api/users";

  Future<http.Response> postApi(String name, String job) async {
    final data = {'name': name, 'job': job};
    http.Response response;

    response = await http.post(Uri.parse(url), body: jsonEncode(data));

    return response;
  }

  final String putUrl = 'https://reqres.in/api/users/2';  

}