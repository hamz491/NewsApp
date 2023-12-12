class NewsModel {
  String? title;
  String? subtitle;
  String? image;
  NewsModel({required this.title, required this.subtitle, required this.image});

  factory NewsModel.fromJson({required var json}) {
    return NewsModel(
      title: json['title'],
      subtitle: json['description'],
      image: json['urlToImage'],
    );
  }
}
