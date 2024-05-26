import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Crud {
  getRequest(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        return responseBody;
      } else {
        if (kDebugMode) {
          print('error ${response.statusCode}');
        }
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print('error from catch $e');
      }
    }
  }

  postRequest(String url, Map data) async {
    try {
      var response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        return responseBody;
      } else {
        if (kDebugMode) {
          print('error ${response.body}');
        }
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print('error from catch $e');
      }
    }
  }
}
