import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:nekosophy/models/meigen.dart';

final logger = Logger();

class MeigenRepository {
  Future<List<Meigen>> fetchMeigens() async {
    // URL
    Uri url = Uri.parse('https://meigen.doodlenote.net/api/json.php');

    // GETリクエスト
    final http.Response response = await http.get(url);

    // ステータスコード確認
    if (response.statusCode == 200) {
      return compute(parseMeigens, response.body);
    } else {
      throw Exception('Failed to fetch Meigens');
    }
  }

  // List<Meigens>に変換
  List<Meigen> parseMeigens(String responseBody) {
    final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

    return parsed.map<Meigen>((json) => Meigen.fromJson(json)).toList();
  }
}
