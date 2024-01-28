
class SearchModel {
  List<Data>? data;
  Pagination? pagination;
  Meta? meta;

  SearchModel({this.data, this.pagination, this.meta});

  SearchModel.fromJson(Map<String, dynamic> json) {
    if(json["data"] is List) {
      data = json["data"] == null ? null : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
    if(json["pagination"] is Map) {
      pagination = json["pagination"] == null ? null : Pagination.fromJson(json["pagination"]);
    }
    if(json["meta"] is Map) {
      meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    if(pagination != null) {
      _data["pagination"] = pagination?.toJson();
    }
    if(meta != null) {
      _data["meta"] = meta?.toJson();
    }
    return _data;
  }
}

class Meta {
  int? status;
  String? msg;
  String? responseId;

  Meta({this.status, this.msg, this.responseId});

  Meta.fromJson(Map<String, dynamic> json) {
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["msg"] is String) {
      msg = json["msg"];
    }
    if(json["response_id"] is String) {
      responseId = json["response_id"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["status"] = status;
    _data["msg"] = msg;
    _data["response_id"] = responseId;
    return _data;
  }
}

class Pagination {
  int? totalCount;
  int? count;
  int? offset;

  Pagination({this.totalCount, this.count, this.offset});

  Pagination.fromJson(Map<String, dynamic> json) {
    if(json["total_count"] is int) {
      totalCount = json["total_count"];
    }
    if(json["count"] is int) {
      count = json["count"];
    }
    if(json["offset"] is int) {
      offset = json["offset"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["total_count"] = totalCount;
    _data["count"] = count;
    _data["offset"] = offset;
    return _data;
  }
}

class Data {
  String? type;
  String? id;
  String? url;
  String? slug;
  String? bitlyGifUrl;
  String? bitlyUrl;
  String? embedUrl;
  String? username;
  String? source;
  String? title;
  String? rating;
  String? contentUrl;
  String? sourceTld;
  String? sourcePostUrl;
  int? isSticker;
  String? importDatetime;
  String? trendingDatetime;
  Images? images;
  String? analyticsResponsePayload;
  Analytics? analytics;

  Data({this.type, this.id, this.url, this.slug, this.bitlyGifUrl, this.bitlyUrl, this.embedUrl, this.username, this.source, this.title, this.rating, this.contentUrl, this.sourceTld, this.sourcePostUrl, this.isSticker, this.importDatetime, this.trendingDatetime, this.images, this.analyticsResponsePayload, this.analytics});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["slug"] is String) {
      slug = json["slug"];
    }
    if(json["bitly_gif_url"] is String) {
      bitlyGifUrl = json["bitly_gif_url"];
    }
    if(json["bitly_url"] is String) {
      bitlyUrl = json["bitly_url"];
    }
    if(json["embed_url"] is String) {
      embedUrl = json["embed_url"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
    if(json["source"] is String) {
      source = json["source"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["rating"] is String) {
      rating = json["rating"];
    }
    if(json["content_url"] is String) {
      contentUrl = json["content_url"];
    }
    if(json["source_tld"] is String) {
      sourceTld = json["source_tld"];
    }
    if(json["source_post_url"] is String) {
      sourcePostUrl = json["source_post_url"];
    }
    if(json["is_sticker"] is int) {
      isSticker = json["is_sticker"];
    }
    if(json["import_datetime"] is String) {
      importDatetime = json["import_datetime"];
    }
    if(json["trending_datetime"] is String) {
      trendingDatetime = json["trending_datetime"];
    }
    if(json["images"] is Map) {
      images = json["images"] == null ? null : Images.fromJson(json["images"]);
    }
    if(json["analytics_response_payload"] is String) {
      analyticsResponsePayload = json["analytics_response_payload"];
    }
    if(json["analytics"] is Map) {
      analytics = json["analytics"] == null ? null : Analytics.fromJson(json["analytics"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["id"] = id;
    _data["url"] = url;
    _data["slug"] = slug;
    _data["bitly_gif_url"] = bitlyGifUrl;
    _data["bitly_url"] = bitlyUrl;
    _data["embed_url"] = embedUrl;
    _data["username"] = username;
    _data["source"] = source;
    _data["title"] = title;
    _data["rating"] = rating;
    _data["content_url"] = contentUrl;
    _data["source_tld"] = sourceTld;
    _data["source_post_url"] = sourcePostUrl;
    _data["is_sticker"] = isSticker;
    _data["import_datetime"] = importDatetime;
    _data["trending_datetime"] = trendingDatetime;
    if(images != null) {
      _data["images"] = images?.toJson();
    }
    _data["analytics_response_payload"] = analyticsResponsePayload;
    if(analytics != null) {
      _data["analytics"] = analytics?.toJson();
    }
    return _data;
  }
}

class Analytics {
  Onload? onload;
  Onclick? onclick;
  Onsent? onsent;

  Analytics({this.onload, this.onclick, this.onsent});

  Analytics.fromJson(Map<String, dynamic> json) {
    if(json["onload"] is Map) {
      onload = json["onload"] == null ? null : Onload.fromJson(json["onload"]);
    }
    if(json["onclick"] is Map) {
      onclick = json["onclick"] == null ? null : Onclick.fromJson(json["onclick"]);
    }
    if(json["onsent"] is Map) {
      onsent = json["onsent"] == null ? null : Onsent.fromJson(json["onsent"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(onload != null) {
      _data["onload"] = onload?.toJson();
    }
    if(onclick != null) {
      _data["onclick"] = onclick?.toJson();
    }
    if(onsent != null) {
      _data["onsent"] = onsent?.toJson();
    }
    return _data;
  }
}

class Onsent {
  String? url;

  Onsent({this.url});

  Onsent.fromJson(Map<String, dynamic> json) {
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    return _data;
  }
}

class Onclick {
  String? url;

  Onclick({this.url});

  Onclick.fromJson(Map<String, dynamic> json) {
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    return _data;
  }
}

class Onload {
  String? url;

  Onload({this.url});

  Onload.fromJson(Map<String, dynamic> json) {
    if(json["url"] is String) {
      url = json["url"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["url"] = url;
    return _data;
  }
}

class Images {
  Original? original;
  FixedHeight? fixedHeight;
  FixedHeightDownsampled? fixedHeightDownsampled;
  FixedHeightSmall? fixedHeightSmall;
  FixedWidth? fixedWidth;
  FixedWidthDownsampled? fixedWidthDownsampled;
  FixedWidthSmall? fixedWidthSmall;

  Images({this.original, this.fixedHeight, this.fixedHeightDownsampled, this.fixedHeightSmall, this.fixedWidth, this.fixedWidthDownsampled, this.fixedWidthSmall});

  Images.fromJson(Map<String, dynamic> json) {
    if(json["original"] is Map) {
      original = json["original"] == null ? null : Original.fromJson(json["original"]);
    }
    if(json["fixed_height"] is Map) {
      fixedHeight = json["fixed_height"] == null ? null : FixedHeight.fromJson(json["fixed_height"]);
    }
    if(json["fixed_height_downsampled"] is Map) {
      fixedHeightDownsampled = json["fixed_height_downsampled"] == null ? null : FixedHeightDownsampled.fromJson(json["fixed_height_downsampled"]);
    }
    if(json["fixed_height_small"] is Map) {
      fixedHeightSmall = json["fixed_height_small"] == null ? null : FixedHeightSmall.fromJson(json["fixed_height_small"]);
    }
    if(json["fixed_width"] is Map) {
      fixedWidth = json["fixed_width"] == null ? null : FixedWidth.fromJson(json["fixed_width"]);
    }
    if(json["fixed_width_downsampled"] is Map) {
      fixedWidthDownsampled = json["fixed_width_downsampled"] == null ? null : FixedWidthDownsampled.fromJson(json["fixed_width_downsampled"]);
    }
    if(json["fixed_width_small"] is Map) {
      fixedWidthSmall = json["fixed_width_small"] == null ? null : FixedWidthSmall.fromJson(json["fixed_width_small"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(original != null) {
      _data["original"] = original?.toJson();
    }
    if(fixedHeight != null) {
      _data["fixed_height"] = fixedHeight?.toJson();
    }
    if(fixedHeightDownsampled != null) {
      _data["fixed_height_downsampled"] = fixedHeightDownsampled?.toJson();
    }
    if(fixedHeightSmall != null) {
      _data["fixed_height_small"] = fixedHeightSmall?.toJson();
    }
    if(fixedWidth != null) {
      _data["fixed_width"] = fixedWidth?.toJson();
    }
    if(fixedWidthDownsampled != null) {
      _data["fixed_width_downsampled"] = fixedWidthDownsampled?.toJson();
    }
    if(fixedWidthSmall != null) {
      _data["fixed_width_small"] = fixedWidthSmall?.toJson();
    }
    return _data;
  }
}

class FixedWidthSmall {
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;

  FixedWidthSmall({this.height, this.width, this.size, this.url, this.mp4Size, this.mp4, this.webpSize, this.webp});

  FixedWidthSmall.fromJson(Map<String, dynamic> json) {
    if(json["height"] is String) {
      height = json["height"];
    }
    if(json["width"] is String) {
      width = json["width"];
    }
    if(json["size"] is String) {
      size = json["size"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if(json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if(json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if(json["webp"] is String) {
      webp = json["webp"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["width"] = width;
    _data["size"] = size;
    _data["url"] = url;
    _data["mp4_size"] = mp4Size;
    _data["mp4"] = mp4;
    _data["webp_size"] = webpSize;
    _data["webp"] = webp;
    return _data;
  }
}

class FixedWidthDownsampled {
  String? height;
  String? width;
  String? size;
  String? url;
  String? webpSize;
  String? webp;

  FixedWidthDownsampled({this.height, this.width, this.size, this.url, this.webpSize, this.webp});

  FixedWidthDownsampled.fromJson(Map<String, dynamic> json) {
    if(json["height"] is String) {
      height = json["height"];
    }
    if(json["width"] is String) {
      width = json["width"];
    }
    if(json["size"] is String) {
      size = json["size"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if(json["webp"] is String) {
      webp = json["webp"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["width"] = width;
    _data["size"] = size;
    _data["url"] = url;
    _data["webp_size"] = webpSize;
    _data["webp"] = webp;
    return _data;
  }
}

class FixedWidth {
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;

  FixedWidth({this.height, this.width, this.size, this.url, this.mp4Size, this.mp4, this.webpSize, this.webp});

  FixedWidth.fromJson(Map<String, dynamic> json) {
    if(json["height"] is String) {
      height = json["height"];
    }
    if(json["width"] is String) {
      width = json["width"];
    }
    if(json["size"] is String) {
      size = json["size"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if(json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if(json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if(json["webp"] is String) {
      webp = json["webp"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["width"] = width;
    _data["size"] = size;
    _data["url"] = url;
    _data["mp4_size"] = mp4Size;
    _data["mp4"] = mp4;
    _data["webp_size"] = webpSize;
    _data["webp"] = webp;
    return _data;
  }
}

class FixedHeightSmall {
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;

  FixedHeightSmall({this.height, this.width, this.size, this.url, this.mp4Size, this.mp4, this.webpSize, this.webp});

  FixedHeightSmall.fromJson(Map<String, dynamic> json) {
    if(json["height"] is String) {
      height = json["height"];
    }
    if(json["width"] is String) {
      width = json["width"];
    }
    if(json["size"] is String) {
      size = json["size"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if(json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if(json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if(json["webp"] is String) {
      webp = json["webp"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["width"] = width;
    _data["size"] = size;
    _data["url"] = url;
    _data["mp4_size"] = mp4Size;
    _data["mp4"] = mp4;
    _data["webp_size"] = webpSize;
    _data["webp"] = webp;
    return _data;
  }
}

class FixedHeightDownsampled {
  String? height;
  String? width;
  String? size;
  String? url;
  String? webpSize;
  String? webp;

  FixedHeightDownsampled({this.height, this.width, this.size, this.url, this.webpSize, this.webp});

  FixedHeightDownsampled.fromJson(Map<String, dynamic> json) {
    if(json["height"] is String) {
      height = json["height"];
    }
    if(json["width"] is String) {
      width = json["width"];
    }
    if(json["size"] is String) {
      size = json["size"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if(json["webp"] is String) {
      webp = json["webp"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["width"] = width;
    _data["size"] = size;
    _data["url"] = url;
    _data["webp_size"] = webpSize;
    _data["webp"] = webp;
    return _data;
  }
}

class FixedHeight {
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;

  FixedHeight({this.height, this.width, this.size, this.url, this.mp4Size, this.mp4, this.webpSize, this.webp});

  FixedHeight.fromJson(Map<String, dynamic> json) {
    if(json["height"] is String) {
      height = json["height"];
    }
    if(json["width"] is String) {
      width = json["width"];
    }
    if(json["size"] is String) {
      size = json["size"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if(json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if(json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if(json["webp"] is String) {
      webp = json["webp"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["width"] = width;
    _data["size"] = size;
    _data["url"] = url;
    _data["mp4_size"] = mp4Size;
    _data["mp4"] = mp4;
    _data["webp_size"] = webpSize;
    _data["webp"] = webp;
    return _data;
  }
}

class Original {
  String? height;
  String? width;
  String? size;
  String? url;
  String? mp4Size;
  String? mp4;
  String? webpSize;
  String? webp;
  String? frames;
  String? hash;

  Original({this.height, this.width, this.size, this.url, this.mp4Size, this.mp4, this.webpSize, this.webp, this.frames, this.hash});

  Original.fromJson(Map<String, dynamic> json) {
    if(json["height"] is String) {
      height = json["height"];
    }
    if(json["width"] is String) {
      width = json["width"];
    }
    if(json["size"] is String) {
      size = json["size"];
    }
    if(json["url"] is String) {
      url = json["url"];
    }
    if(json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if(json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if(json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if(json["webp"] is String) {
      webp = json["webp"];
    }
    if(json["frames"] is String) {
      frames = json["frames"];
    }
    if(json["hash"] is String) {
      hash = json["hash"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["width"] = width;
    _data["size"] = size;
    _data["url"] = url;
    _data["mp4_size"] = mp4Size;
    _data["mp4"] = mp4;
    _data["webp_size"] = webpSize;
    _data["webp"] = webp;
    _data["frames"] = frames;
    _data["hash"] = hash;
    return _data;
  }
}