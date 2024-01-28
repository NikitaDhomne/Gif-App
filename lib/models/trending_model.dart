class TrendingGifModel {
  String imgSrc;

  TrendingGifModel({required this.imgSrc});

  static TrendingGifModel fromApi2App(Map<String, dynamic> gifMap) {
    return TrendingGifModel(imgSrc: gifMap["images"]["original"]["url"]);
  }
}
