import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/trending_model.dart';

class TrendingApiGif {
  static List<TrendingGifModel> trendingGif = [];

  static Future<List<TrendingGifModel>> getTrendingGifs() async {
    var response = await http.get(
      Uri.parse(
          "https://api.giphy.com/v1/gifs/trending?api_key=iAMjjb4uNhLcV7D6A9BoSa8IrqPpSOsr&limit=100&offset=0&rating=g&bundle=messaging_non_clips"),
    );

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    List data = jsonData['data'];
    data.forEach((element) {
      trendingGif.add(TrendingGifModel.fromApi2App(element));
    });

    return trendingGif;
  }
}
