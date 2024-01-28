class CategoriesModel {
  List<Data>? data;
  Pagination? pagination;
  Meta? meta;

  CategoriesModel({this.data, this.pagination, this.meta});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    if (json["data"] is List) {
      data = json["data"] == null
          ? null
          : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
    if (json["pagination"] is Map) {
      pagination = json["pagination"] == null
          ? null
          : Pagination.fromJson(json["pagination"]);
    }
    if (json["meta"] is Map) {
      meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    if (pagination != null) {
      _data["pagination"] = pagination?.toJson();
    }
    if (meta != null) {
      _data["meta"] = meta?.toJson();
    }
    return _data;
  }
}

class Meta {
  String? msg;
  int? status;
  String? responseId;

  Meta({this.msg, this.status, this.responseId});

  Meta.fromJson(Map<String, dynamic> json) {
    if (json["msg"] is String) {
      msg = json["msg"];
    }
    if (json["status"] is int) {
      status = json["status"];
    }
    if (json["response_id"] is String) {
      responseId = json["response_id"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["msg"] = msg;
    _data["status"] = status;
    _data["response_id"] = responseId;
    return _data;
  }
}

class Pagination {
  int? totalCount;
  int? count;

  Pagination({this.totalCount, this.count});

  Pagination.fromJson(Map<String, dynamic> json) {
    if (json["total_count"] is int) {
      totalCount = json["total_count"];
    }
    if (json["count"] is int) {
      count = json["count"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["total_count"] = totalCount;
    _data["count"] = count;
    return _data;
  }
}

class Data {
  String? name;
  String? nameEncoded;
  List<Subcategories>? subcategories;
  Gif? gif;

  Data({this.name, this.nameEncoded, this.subcategories, this.gif});

  Data.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["name_encoded"] is String) {
      nameEncoded = json["name_encoded"];
    }
    if (json["subcategories"] is List) {
      subcategories = json["subcategories"] == null
          ? null
          : (json["subcategories"] as List)
              .map((e) => Subcategories.fromJson(e))
              .toList();
    }
    if (json["gif"] is Map) {
      gif = json["gif"] == null ? null : Gif.fromJson(json["gif"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["name_encoded"] = nameEncoded;
    if (subcategories != null) {
      _data["subcategories"] = subcategories?.map((e) => e.toJson()).toList();
    }
    if (gif != null) {
      _data["gif"] = gif?.toJson();
    }
    return _data;
  }
}

class Gif {
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
  String? createDatetime;
  String? updateDatetime;
  Images? images;

  Gif(
      {this.type,
      this.id,
      this.url,
      this.slug,
      this.bitlyGifUrl,
      this.bitlyUrl,
      this.embedUrl,
      this.username,
      this.source,
      this.title,
      this.rating,
      this.contentUrl,
      this.sourceTld,
      this.sourcePostUrl,
      this.isSticker,
      this.importDatetime,
      this.trendingDatetime,
      this.createDatetime,
      this.updateDatetime,
      this.images});

  Gif.fromJson(Map<String, dynamic> json) {
    if (json["type"] is String) {
      type = json["type"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["slug"] is String) {
      slug = json["slug"];
    }
    if (json["bitly_gif_url"] is String) {
      bitlyGifUrl = json["bitly_gif_url"];
    }
    if (json["bitly_url"] is String) {
      bitlyUrl = json["bitly_url"];
    }
    if (json["embed_url"] is String) {
      embedUrl = json["embed_url"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["source"] is String) {
      source = json["source"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["rating"] is String) {
      rating = json["rating"];
    }
    if (json["content_url"] is String) {
      contentUrl = json["content_url"];
    }
    if (json["source_tld"] is String) {
      sourceTld = json["source_tld"];
    }
    if (json["source_post_url"] is String) {
      sourcePostUrl = json["source_post_url"];
    }
    if (json["is_sticker"] is int) {
      isSticker = json["is_sticker"];
    }
    if (json["import_datetime"] is String) {
      importDatetime = json["import_datetime"];
    }
    if (json["trending_datetime"] is String) {
      trendingDatetime = json["trending_datetime"];
    }
    if (json["create_datetime"] is String) {
      createDatetime = json["create_datetime"];
    }
    if (json["update_datetime"] is String) {
      updateDatetime = json["update_datetime"];
    }
    if (json["images"] is Map) {
      images = json["images"] == null ? null : Images.fromJson(json["images"]);
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
    _data["create_datetime"] = createDatetime;
    _data["update_datetime"] = updateDatetime;
    if (images != null) {
      _data["images"] = images?.toJson();
    }
    return _data;
  }
}

class Images {
  FixedWidthStill? fixedWidthStill;
  FixedHeightDownsampled? fixedHeightDownsampled;
  PreviewGif? previewGif;
  Preview? preview;
  FixedHeightSmall? fixedHeightSmall;
  Downsized? downsized;
  FixedWidthDownsampled? fixedWidthDownsampled;
  FixedWidth? fixedWidth;
  DownsizedStill? downsizedStill;
  DownsizedMedium? downsizedMedium;
  OriginalMp4? originalMp4;
  DownsizedLarge? downsizedLarge;
  PreviewWebp? previewWebp;
  Original? original;
  OriginalStill? originalStill;
  FixedHeightSmallStill? fixedHeightSmallStill;
  FixedWidthSmall? fixedWidthSmall;
  Looping? looping;
  DownsizedSmall? downsizedSmall;
  FixedWidthSmallStill? fixedWidthSmallStill;
  FixedHeightStill? fixedHeightStill;
  FixedHeight? fixedHeight;

  Images(
      {this.fixedWidthStill,
      this.fixedHeightDownsampled,
      this.previewGif,
      this.preview,
      this.fixedHeightSmall,
      this.downsized,
      this.fixedWidthDownsampled,
      this.fixedWidth,
      this.downsizedStill,
      this.downsizedMedium,
      this.originalMp4,
      this.downsizedLarge,
      this.previewWebp,
      this.original,
      this.originalStill,
      this.fixedHeightSmallStill,
      this.fixedWidthSmall,
      this.looping,
      this.downsizedSmall,
      this.fixedWidthSmallStill,
      this.fixedHeightStill,
      this.fixedHeight});

  Images.fromJson(Map<String, dynamic> json) {
    if (json["fixed_width_still"] is Map) {
      fixedWidthStill = json["fixed_width_still"] == null
          ? null
          : FixedWidthStill.fromJson(json["fixed_width_still"]);
    }
    if (json["fixed_height_downsampled"] is Map) {
      fixedHeightDownsampled = json["fixed_height_downsampled"] == null
          ? null
          : FixedHeightDownsampled.fromJson(json["fixed_height_downsampled"]);
    }
    if (json["preview_gif"] is Map) {
      previewGif = json["preview_gif"] == null
          ? null
          : PreviewGif.fromJson(json["preview_gif"]);
    }
    if (json["preview"] is Map) {
      preview =
          json["preview"] == null ? null : Preview.fromJson(json["preview"]);
    }
    if (json["fixed_height_small"] is Map) {
      fixedHeightSmall = json["fixed_height_small"] == null
          ? null
          : FixedHeightSmall.fromJson(json["fixed_height_small"]);
    }
    if (json["downsized"] is Map) {
      downsized = json["downsized"] == null
          ? null
          : Downsized.fromJson(json["downsized"]);
    }
    if (json["fixed_width_downsampled"] is Map) {
      fixedWidthDownsampled = json["fixed_width_downsampled"] == null
          ? null
          : FixedWidthDownsampled.fromJson(json["fixed_width_downsampled"]);
    }
    if (json["fixed_width"] is Map) {
      fixedWidth = json["fixed_width"] == null
          ? null
          : FixedWidth.fromJson(json["fixed_width"]);
    }
    if (json["downsized_still"] is Map) {
      downsizedStill = json["downsized_still"] == null
          ? null
          : DownsizedStill.fromJson(json["downsized_still"]);
    }
    if (json["downsized_medium"] is Map) {
      downsizedMedium = json["downsized_medium"] == null
          ? null
          : DownsizedMedium.fromJson(json["downsized_medium"]);
    }
    if (json["original_mp4"] is Map) {
      originalMp4 = json["original_mp4"] == null
          ? null
          : OriginalMp4.fromJson(json["original_mp4"]);
    }
    if (json["downsized_large"] is Map) {
      downsizedLarge = json["downsized_large"] == null
          ? null
          : DownsizedLarge.fromJson(json["downsized_large"]);
    }
    if (json["preview_webp"] is Map) {
      previewWebp = json["preview_webp"] == null
          ? null
          : PreviewWebp.fromJson(json["preview_webp"]);
    }
    if (json["original"] is Map) {
      original =
          json["original"] == null ? null : Original.fromJson(json["original"]);
    }
    if (json["original_still"] is Map) {
      originalStill = json["original_still"] == null
          ? null
          : OriginalStill.fromJson(json["original_still"]);
    }
    if (json["fixed_height_small_still"] is Map) {
      fixedHeightSmallStill = json["fixed_height_small_still"] == null
          ? null
          : FixedHeightSmallStill.fromJson(json["fixed_height_small_still"]);
    }
    if (json["fixed_width_small"] is Map) {
      fixedWidthSmall = json["fixed_width_small"] == null
          ? null
          : FixedWidthSmall.fromJson(json["fixed_width_small"]);
    }
    if (json["looping"] is Map) {
      looping =
          json["looping"] == null ? null : Looping.fromJson(json["looping"]);
    }
    if (json["downsized_small"] is Map) {
      downsizedSmall = json["downsized_small"] == null
          ? null
          : DownsizedSmall.fromJson(json["downsized_small"]);
    }
    if (json["fixed_width_small_still"] is Map) {
      fixedWidthSmallStill = json["fixed_width_small_still"] == null
          ? null
          : FixedWidthSmallStill.fromJson(json["fixed_width_small_still"]);
    }
    if (json["fixed_height_still"] is Map) {
      fixedHeightStill = json["fixed_height_still"] == null
          ? null
          : FixedHeightStill.fromJson(json["fixed_height_still"]);
    }
    if (json["fixed_height"] is Map) {
      fixedHeight = json["fixed_height"] == null
          ? null
          : FixedHeight.fromJson(json["fixed_height"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    if (fixedWidthStill != null) {
      _data["fixed_width_still"] = fixedWidthStill?.toJson();
    }
    if (fixedHeightDownsampled != null) {
      _data["fixed_height_downsampled"] = fixedHeightDownsampled?.toJson();
    }
    if (previewGif != null) {
      _data["preview_gif"] = previewGif?.toJson();
    }
    if (preview != null) {
      _data["preview"] = preview?.toJson();
    }
    if (fixedHeightSmall != null) {
      _data["fixed_height_small"] = fixedHeightSmall?.toJson();
    }
    if (downsized != null) {
      _data["downsized"] = downsized?.toJson();
    }
    if (fixedWidthDownsampled != null) {
      _data["fixed_width_downsampled"] = fixedWidthDownsampled?.toJson();
    }
    if (fixedWidth != null) {
      _data["fixed_width"] = fixedWidth?.toJson();
    }
    if (downsizedStill != null) {
      _data["downsized_still"] = downsizedStill?.toJson();
    }
    if (downsizedMedium != null) {
      _data["downsized_medium"] = downsizedMedium?.toJson();
    }
    if (originalMp4 != null) {
      _data["original_mp4"] = originalMp4?.toJson();
    }
    if (downsizedLarge != null) {
      _data["downsized_large"] = downsizedLarge?.toJson();
    }
    if (previewWebp != null) {
      _data["preview_webp"] = previewWebp?.toJson();
    }
    if (original != null) {
      _data["original"] = original?.toJson();
    }
    if (originalStill != null) {
      _data["original_still"] = originalStill?.toJson();
    }
    if (fixedHeightSmallStill != null) {
      _data["fixed_height_small_still"] = fixedHeightSmallStill?.toJson();
    }
    if (fixedWidthSmall != null) {
      _data["fixed_width_small"] = fixedWidthSmall?.toJson();
    }
    if (looping != null) {
      _data["looping"] = looping?.toJson();
    }
    if (downsizedSmall != null) {
      _data["downsized_small"] = downsizedSmall?.toJson();
    }
    if (fixedWidthSmallStill != null) {
      _data["fixed_width_small_still"] = fixedWidthSmallStill?.toJson();
    }
    if (fixedHeightStill != null) {
      _data["fixed_height_still"] = fixedHeightStill?.toJson();
    }
    if (fixedHeight != null) {
      _data["fixed_height"] = fixedHeight?.toJson();
    }
    return _data;
  }
}

class FixedHeight {
  String? height;
  String? mp4;
  String? mp4Size;
  String? size;
  String? url;
  String? webp;
  String? webpSize;
  String? width;

  FixedHeight(
      {this.height,
      this.mp4,
      this.mp4Size,
      this.size,
      this.url,
      this.webp,
      this.webpSize,
      this.width});

  FixedHeight.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if (json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["webp"] is String) {
      webp = json["webp"];
    }
    if (json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["mp4"] = mp4;
    _data["mp4_size"] = mp4Size;
    _data["size"] = size;
    _data["url"] = url;
    _data["webp"] = webp;
    _data["webp_size"] = webpSize;
    _data["width"] = width;
    return _data;
  }
}

class FixedHeightStill {
  String? height;
  String? size;
  String? url;
  String? width;

  FixedHeightStill({this.height, this.size, this.url, this.width});

  FixedHeightStill.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class FixedWidthSmallStill {
  String? height;
  String? size;
  String? url;
  String? width;

  FixedWidthSmallStill({this.height, this.size, this.url, this.width});

  FixedWidthSmallStill.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class DownsizedSmall {
  String? height;
  String? mp4;
  String? mp4Size;
  String? width;

  DownsizedSmall({this.height, this.mp4, this.mp4Size, this.width});

  DownsizedSmall.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if (json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["mp4"] = mp4;
    _data["mp4_size"] = mp4Size;
    _data["width"] = width;
    return _data;
  }
}

class Looping {
  String? mp4;
  String? mp4Size;

  Looping({this.mp4, this.mp4Size});

  Looping.fromJson(Map<String, dynamic> json) {
    if (json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if (json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["mp4"] = mp4;
    _data["mp4_size"] = mp4Size;
    return _data;
  }
}

class FixedWidthSmall {
  String? height;
  String? mp4;
  String? mp4Size;
  String? size;
  String? url;
  String? webp;
  String? webpSize;
  String? width;

  FixedWidthSmall(
      {this.height,
      this.mp4,
      this.mp4Size,
      this.size,
      this.url,
      this.webp,
      this.webpSize,
      this.width});

  FixedWidthSmall.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if (json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["webp"] is String) {
      webp = json["webp"];
    }
    if (json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["mp4"] = mp4;
    _data["mp4_size"] = mp4Size;
    _data["size"] = size;
    _data["url"] = url;
    _data["webp"] = webp;
    _data["webp_size"] = webpSize;
    _data["width"] = width;
    return _data;
  }
}

class FixedHeightSmallStill {
  String? height;
  String? size;
  String? url;
  String? width;

  FixedHeightSmallStill({this.height, this.size, this.url, this.width});

  FixedHeightSmallStill.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class OriginalStill {
  String? height;
  String? size;
  String? url;
  String? width;

  OriginalStill({this.height, this.size, this.url, this.width});

  OriginalStill.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class Original {
  String? frames;
  String? hash;
  String? height;
  String? mp4;
  String? mp4Size;
  String? size;
  String? url;
  String? webp;
  String? webpSize;
  String? width;

  Original(
      {this.frames,
      this.hash,
      this.height,
      this.mp4,
      this.mp4Size,
      this.size,
      this.url,
      this.webp,
      this.webpSize,
      this.width});

  Original.fromJson(Map<String, dynamic> json) {
    if (json["frames"] is String) {
      frames = json["frames"];
    }
    if (json["hash"] is String) {
      hash = json["hash"];
    }
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if (json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["webp"] is String) {
      webp = json["webp"];
    }
    if (json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["frames"] = frames;
    _data["hash"] = hash;
    _data["height"] = height;
    _data["mp4"] = mp4;
    _data["mp4_size"] = mp4Size;
    _data["size"] = size;
    _data["url"] = url;
    _data["webp"] = webp;
    _data["webp_size"] = webpSize;
    _data["width"] = width;
    return _data;
  }
}

class PreviewWebp {
  String? height;
  String? size;
  String? url;
  String? width;

  PreviewWebp({this.height, this.size, this.url, this.width});

  PreviewWebp.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class DownsizedLarge {
  String? height;
  String? size;
  String? url;
  String? width;

  DownsizedLarge({this.height, this.size, this.url, this.width});

  DownsizedLarge.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class OriginalMp4 {
  String? height;
  String? mp4;
  String? mp4Size;
  String? width;

  OriginalMp4({this.height, this.mp4, this.mp4Size, this.width});

  OriginalMp4.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if (json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["mp4"] = mp4;
    _data["mp4_size"] = mp4Size;
    _data["width"] = width;
    return _data;
  }
}

class DownsizedMedium {
  String? height;
  String? size;
  String? url;
  String? width;

  DownsizedMedium({this.height, this.size, this.url, this.width});

  DownsizedMedium.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class DownsizedStill {
  String? height;
  String? size;
  String? url;
  String? width;

  DownsizedStill({this.height, this.size, this.url, this.width});

  DownsizedStill.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class FixedWidth {
  String? height;
  String? mp4;
  String? mp4Size;
  String? size;
  String? url;
  String? webp;
  String? webpSize;
  String? width;

  FixedWidth(
      {this.height,
      this.mp4,
      this.mp4Size,
      this.size,
      this.url,
      this.webp,
      this.webpSize,
      this.width});

  FixedWidth.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if (json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["webp"] is String) {
      webp = json["webp"];
    }
    if (json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["mp4"] = mp4;
    _data["mp4_size"] = mp4Size;
    _data["size"] = size;
    _data["url"] = url;
    _data["webp"] = webp;
    _data["webp_size"] = webpSize;
    _data["width"] = width;
    return _data;
  }
}

class FixedWidthDownsampled {
  String? height;
  String? size;
  String? url;
  String? webp;
  String? webpSize;
  String? width;

  FixedWidthDownsampled(
      {this.height, this.size, this.url, this.webp, this.webpSize, this.width});

  FixedWidthDownsampled.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["webp"] is String) {
      webp = json["webp"];
    }
    if (json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["webp"] = webp;
    _data["webp_size"] = webpSize;
    _data["width"] = width;
    return _data;
  }
}

class Downsized {
  String? height;
  String? size;
  String? url;
  String? width;

  Downsized({this.height, this.size, this.url, this.width});

  Downsized.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class FixedHeightSmall {
  String? height;
  String? mp4;
  String? mp4Size;
  String? size;
  String? url;
  String? webp;
  String? webpSize;
  String? width;

  FixedHeightSmall(
      {this.height,
      this.mp4,
      this.mp4Size,
      this.size,
      this.url,
      this.webp,
      this.webpSize,
      this.width});

  FixedHeightSmall.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if (json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["webp"] is String) {
      webp = json["webp"];
    }
    if (json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["mp4"] = mp4;
    _data["mp4_size"] = mp4Size;
    _data["size"] = size;
    _data["url"] = url;
    _data["webp"] = webp;
    _data["webp_size"] = webpSize;
    _data["width"] = width;
    return _data;
  }
}

class Preview {
  String? height;
  String? mp4;
  String? mp4Size;
  String? width;

  Preview({this.height, this.mp4, this.mp4Size, this.width});

  Preview.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["mp4"] is String) {
      mp4 = json["mp4"];
    }
    if (json["mp4_size"] is String) {
      mp4Size = json["mp4_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["mp4"] = mp4;
    _data["mp4_size"] = mp4Size;
    _data["width"] = width;
    return _data;
  }
}

class PreviewGif {
  String? height;
  String? size;
  String? url;
  String? width;

  PreviewGif({this.height, this.size, this.url, this.width});

  PreviewGif.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class FixedHeightDownsampled {
  String? height;
  String? size;
  String? url;
  String? webp;
  String? webpSize;
  String? width;

  FixedHeightDownsampled(
      {this.height, this.size, this.url, this.webp, this.webpSize, this.width});

  FixedHeightDownsampled.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["webp"] is String) {
      webp = json["webp"];
    }
    if (json["webp_size"] is String) {
      webpSize = json["webp_size"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["webp"] = webp;
    _data["webp_size"] = webpSize;
    _data["width"] = width;
    return _data;
  }
}

class FixedWidthStill {
  String? height;
  String? size;
  String? url;
  String? width;

  FixedWidthStill({this.height, this.size, this.url, this.width});

  FixedWidthStill.fromJson(Map<String, dynamic> json) {
    if (json["height"] is String) {
      height = json["height"];
    }
    if (json["size"] is String) {
      size = json["size"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["width"] is String) {
      width = json["width"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["height"] = height;
    _data["size"] = size;
    _data["url"] = url;
    _data["width"] = width;
    return _data;
  }
}

class Subcategories {
  String? name;
  String? nameEncoded;

  Subcategories({this.name, this.nameEncoded});

  Subcategories.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["name_encoded"] is String) {
      nameEncoded = json["name_encoded"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["name"] = name;
    _data["name_encoded"] = nameEncoded;
    return _data;
  }
}
