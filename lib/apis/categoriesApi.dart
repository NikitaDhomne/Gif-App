import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/categories_model.dart';

Future<CategoriesModel> getCategoriesApi() async {
  var category;
  var url =
      "https://api.giphy.com/v1/gifs/categories?api_key=iAMjjb4uNhLcV7D6A9BoSa8IrqPpSOsr";

  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    category = CategoriesModel.fromJson(data);
  }
  return category;
}
