

import 'dart:convert';

import 'package:http/http.dart' as http;

class Networking{
  Networking(this.url);
  final String url;

  Future getData() async{
    http.Response response = await http.get(url);
    String body = response.body;
    print(body);
    return jsonDecode(body);
  }
}