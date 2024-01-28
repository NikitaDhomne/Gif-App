import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/emogi_model.dart';

Future<EmogiModel> getEmogiApi() async {
  var emogi;
  var url =
      "https://api.giphy.com/v2/emoji?api_key=iAMjjb4uNhLcV7D6A9BoSa8IrqPpSOsr&limit=50&offset=0";

  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    emogi = EmogiModel.fromJson(data);
  }
  return emogi;
}
