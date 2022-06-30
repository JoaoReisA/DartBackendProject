import 'dart:convert';

class NewsModel {
  final int? id;
  final String title;
  final String description;
  final String image;
  final DateTime publicationDate;
  final DateTime? updatedDate;

  NewsModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.publicationDate,
    this.updatedDate,
  });

  NewsModel copyWith({
    int? id,
    String? title,
    String? description,
    String? image,
    DateTime? publicationDate,
    DateTime? updatedDate,
  }) {
    return NewsModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      publicationDate: publicationDate ?? this.publicationDate,
      updatedDate: updatedDate ?? this.updatedDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'image': image,
      'publicationDate': publicationDate.millisecondsSinceEpoch,
      'updatedDate': updatedDate?.millisecondsSinceEpoch,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      image: map['image'] ?? '',
      publicationDate:
          DateTime.fromMillisecondsSinceEpoch(map['publicationDate']),
      updatedDate: map['updatedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedDate'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsModel.fromJson(String source) =>
      NewsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NewsModel(id: $id, title: $title, description: $description, image: $image, publicationDate: $publicationDate, updatedDate: $updatedDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewsModel &&
        other.id == id &&
        other.title == title &&
        other.description == description &&
        other.image == image &&
        other.publicationDate == publicationDate &&
        other.updatedDate == updatedDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        image.hashCode ^
        publicationDate.hashCode ^
        updatedDate.hashCode;
  }
}
