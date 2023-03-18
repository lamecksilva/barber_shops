import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MyApiClient {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<Response> getUsers() async {
    final response = await http.get(Uri.parse('$_baseUrl/users'));

    return Response(
      statusCode: response.statusCode,
      body: response.body,
    );
  }
}
