// To parse this JSON data, do
//
//     final homeScreenModel = homeScreenModelFromJson(jsonString);

import 'dart:convert';

HomeScreenModel homeScreenModelFromJson(String str) =>
    HomeScreenModel.fromJson(json.decode(str));

String homeScreenModelToJson(HomeScreenModel data) =>
    json.encode(data.toJson());

class HomeScreenModel {
  List<Datum>? data;

  HomeScreenModel({
    this.data,
  });

  factory HomeScreenModel.fromJson(Map<String, dynamic> json) =>
      HomeScreenModel(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  bool? active;
  String? blockType;
  int? count;
  DateTime? createdAt;
  dynamic createdBy;
  String? heading;
  String? id;
  String? modifiedBy;
  String? name;
  int? position;
  List<Post>? posts;
  DateTime? updatedAt;
  String? vertical;

  Datum({
    this.active,
    this.blockType,
    this.count,
    this.createdAt,
    this.createdBy,
    this.heading,
    this.id,
    this.modifiedBy,
    this.name,
    this.position,
    this.posts,
    this.updatedAt,
    this.vertical,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        active: json["active"],
        blockType: json["block_type"],
        count: json["count"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        createdBy: json["created_by"],
        heading: json["heading"],
        id: json["id"],
        modifiedBy: json["modified_by"],
        name: json["name"],
        position: json["position"],
        posts: json["posts"] == null
            ? []
            : List<Post>.from(json["posts"]!.map((x) => Post.fromJson(x))),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        vertical: json["vertical"],
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "block_type": blockType,
        "count": count,
        "created_at": createdAt?.toIso8601String(),
        "created_by": createdBy,
        "heading": heading,
        "id": id,
        "modified_by": modifiedBy,
        "name": name,
        "position": position,
        "posts": posts == null
            ? []
            : List<dynamic>.from(posts!.map((x) => x.toJson())),
        "updated_at": updatedAt?.toIso8601String(),
        "vertical": vertical,
      };
}

class Post {
  bool? active;
  String? blogUrl;
  DateTime? createdAt;
  String? createdBy;
  String? description;
  bool? featured;
  List<FileElement>? files;
  String? fullVideoUrl;
  String? id;
  String? layout;
  bool? likedByMe;
  int? likes;
  String? metadata;
  String? modifiedBy;
  dynamic persona;
  String? postType;
  int? priority;
  String? title;
  DateTime? updatedAt;

  Post({
    this.active,
    this.blogUrl,
    this.createdAt,
    this.createdBy,
    this.description,
    this.featured,
    this.files,
    this.fullVideoUrl,
    this.id,
    this.layout,
    this.likedByMe,
    this.likes,
    this.metadata,
    this.modifiedBy,
    this.persona,
    this.postType,
    this.priority,
    this.title,
    this.updatedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        active: json["active"],
        blogUrl: json["blog_url"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        createdBy: json["created_by"],
        description: json["description"],
        featured: json["featured"],
        files: json["files"] == null
            ? []
            : List<FileElement>.from(
                json["files"]!.map((x) => FileElement.fromJson(x))),
        fullVideoUrl: json["full_video_url"],
        id: json["id"],
        layout: json["layout"],
        likedByMe: json["liked_by_me"],
        likes: json["likes"],
        metadata: json["metadata"],
        modifiedBy: json["modified_by"],
        persona: json["persona"],
        postType: json["post_type"],
        priority: json["priority"],
        title: json["title"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "blog_url": blogUrl,
        "created_at": createdAt?.toIso8601String(),
        "created_by": createdBy,
        "description": description,
        "featured": featured,
        "files": files == null
            ? []
            : List<dynamic>.from(files!.map((x) => x.toJson())),
        "full_video_url": fullVideoUrl,
        "id": id,
        "layout": layout,
        "liked_by_me": likedByMe,
        "likes": likes,
        "metadata": metadata,
        "modified_by": modifiedBy,
        "persona": persona,
        "post_type": postType,
        "priority": priority,
        "title": title,
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class FileElement {
  bool? active;
  String? id;
  String? imagePath;
  int? mediaOrder;
  MediaType? mediaType;
  String? post;
  dynamic ratio;
  String? thumbnail;
  String? videoUrl;

  FileElement({
    this.active,
    this.id,
    this.imagePath,
    this.mediaOrder,
    this.mediaType,
    this.post,
    this.ratio,
    this.thumbnail,
    this.videoUrl,
  });

  factory FileElement.fromJson(Map<String, dynamic> json) => FileElement(
        active: json["active"],
        id: json["id"],
        imagePath: json["image_path"],
        mediaOrder: json["media_order"],
        mediaType: mediaTypeValues.map[json["media_type"]]!,
        post: json["post"],
        ratio: json["ratio"],
        thumbnail: json["thumbnail"],
        videoUrl: json["video_url"],
      );

  Map<String, dynamic> toJson() => {
        "active": active,
        "id": id,
        "image_path": imagePath,
        "media_order": mediaOrder,
        "media_type": mediaTypeValues.reverse[mediaType],
        "post": post,
        "ratio": ratio,
        "thumbnail": thumbnail,
        "video_url": videoUrl,
      };
}

enum MediaType { image, video }

final mediaTypeValues =
    EnumValues({"image": MediaType.image, "video": MediaType.video});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
