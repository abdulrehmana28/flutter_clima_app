import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  NetworkHelper(this.url) {}

  String url;

  Future getData() async {
    final uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      String data = response.body;
      //print(data);
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      return response.statusCode;
    }
  }
}
