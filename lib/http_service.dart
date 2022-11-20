import 'dart:convert';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:http/http.dart' as http;

class HttpService {
  Future<List<Item>> getPosts() async {
    String postsUrl = "https://fakestoreapi.com/products";
    Uri uri = Uri(path: postsUrl);
    var res = await http.get(uri);
    if (res.statusCode == 200) {
      var jsonMap = jsonDecode(res.body);
      return jsonMap.map<Item>((e)=>Item.fromJson(e)).toList();
    }
    return [];
  }
}
