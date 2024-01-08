import 'package:http/http.dart' as http;





class ApiService {
  String baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<http.Response> getResponse() async {
    http.Response response = await http.get(Uri.parse(baseUrl));

    return response;
  }
}
