import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/search_model.dart';

Future<SearchModel> getSearchApi(String query) async {
  var search;
  var url =
      "https://api.giphy.com/v1/gifs/search?api_key=iAMjjb4uNhLcV7D6A9BoSa8IrqPpSOsr&q=$query&limit=100&offset=0&rating=g&lang=en&bundle=messaging_non_clips";

  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    search = SearchModel.fromJson(data);
  }
  return search;
}
