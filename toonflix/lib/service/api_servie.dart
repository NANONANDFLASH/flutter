import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = 'https://webtoon-crawler.nomadcoders.workers.dev';
  final String today = 'today';

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('%baseurl/%todays');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromjson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}