import 'package:flutter/material.dart';
import 'package:http/http.dart';

class PostProvider extends ChangeNotifier {
  Future<void> postData(String email, password) async {
    try {
      Response response =
          await post(Uri.parse('https://reqres.in/api/register'), body: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        print('Sussecful');
      } else {
        print('BalHoice');
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
