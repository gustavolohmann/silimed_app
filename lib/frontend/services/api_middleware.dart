import 'package:http/http.dart' as http;

class ApiMiddleware {
  static const String _baseUrl = '';
  static const String _accessToken = '';

  static Future<http.Response> request(String path,
      {String method = 'GET',
      Map<String, String>? headers,
      dynamic body}) async {
    final Uri url = Uri.parse(_baseUrl + path);
    final Map<String, String> updatedHeaders = {
      ...?headers,
      'Authorization': 'Bearer $_accessToken'
    };

    if (method == 'GET') {
      return await http.get(url, headers: updatedHeaders);
    } else if (method == 'POST') {
      return await http.post(url, headers: updatedHeaders, body: body);
    }

    throw Exception('Unsupported HTTP method: $method');
  }
}
