import 'dart:convert';

import 'package:divine_gif/models/childrenpack_stickers_model.dart';
import 'package:divine_gif/models/sticker_pack_model.dart';

import 'package:http/http.dart' as http;

Future<ChildrenpackStickersModel> getChildrenpackStickersApi() async {
  var childrenpackStickers;
  var url =
      "https://api.giphy.com/v1/stickers/packs/3138/children?api_key=iAMjjb4uNhLcV7D6A9BoSa8IrqPpSOsr";

  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    childrenpackStickers = ChildrenpackStickersModel.fromJson(data);
  }
  return childrenpackStickers;
}

Future<ChildrenpackStickersModel> getListingpackStickersApi() async {
  var listingpackStickers;
  var url =
      "https://api.giphy.com/v1/stickers/packs?api_key=iAMjjb4uNhLcV7D6A9BoSa8IrqPpSOsr";

  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    listingpackStickers = ChildrenpackStickersModel.fromJson(data);
  }
  return listingpackStickers;
}

Future<StickerPackModel> getStickerspackApi() async {
  var stickersPack;
  var url =
      "https://api.giphy.com/v1/stickers/packs/3138/stickers?api_key=iAMjjb4uNhLcV7D6A9BoSa8IrqPpSOsr&limit=100&offset=0";

  var response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body.toString());
  if (response.statusCode == 200) {
    stickersPack = StickerPackModel.fromJson(data);
  }
  return stickersPack;
}
