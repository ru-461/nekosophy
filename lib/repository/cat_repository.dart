import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:nekosophy/models/cat.dart';

final logger = Logger();

class CatRepository {
  Future<List<Cat>> fetchCats() async {
    // URL
    Uri url = Uri.parse('https://api.thecatapi.com/v1/images/search');

    // GETリクエスト
    final http.Response response = await http.get(url);

    // ステータスコード確認
    if (response.statusCode == 200) {
      return compute(parseCats, response.body);
    } else {
      throw Exception('Failed to fetch Cats');
    }
  }

  // List<Cats>に変換
  List<Cat> parseCats(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Cat>((json) => Cat.fromJson(json)).toList();
  }
}
