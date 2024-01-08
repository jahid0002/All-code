import 'dart:convert';

import 'package:http/http.dart' as http;

class CountryControllers {
  final base_url = 'https://disease.sh/v3/covid-19/countries';

  /// Hit api///

  Future<List<dynamic>> getCountries() async {
    var data;
    http.Response response = await http.get(Uri.parse(base_url));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body.toString());

      return data;
    } else {
      throw Exception('error');
    }
  }

  void deleteMethod(Map<String, dynamic> map) async {
    try {
      http.Response response = await http.delete(Uri.parse('${base_url}/delete'), body: map);

      if (response.statusCode == 200) {
        getCountries();
      } else {
        throw Future.error('Data Not Found');
      }
    } catch (e) {
      throw e.toString();
    }
  } 

 void uodateMethod(){

 }







}
