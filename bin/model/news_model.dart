class NewsModel {
  final int id;
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
}
