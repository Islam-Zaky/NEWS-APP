class ArticleModel {
  final String? image;
  // String image = "No Image !";
  final String? title;
  final String? subtitle;

  ArticleModel(
      {required this.image, required this.title, required this.subtitle});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description']);
  }
}
