import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/trending_stickers_model.dart';

Future<TrendingStickersModel> getTrendingStickersApi() async {
  var trendingStickers;
  var url =
      "https://api.giphy.com/v1/stickers/trending?api_key=iAMjjb4uNhLcV7D6A9BoSa8IrqPpSOsr&limit=100&offset=0&rating=g&bundle=messaging_non_clips";

  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    trendingStickers = TrendingStickersModel.fromJson(data);
  }
  return trendingStickers;
}
