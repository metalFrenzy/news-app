import '../../domain/entities/news_articles.dart';

class NewsArticleModel extends NewsArticles {
  NewsArticleModel({
    required String? author,
    required String title,
    required String? description,
    required String url,
    required String? urlToImage,
    required String? publishedAt,
    required String? content,
    required String sourceName,
  }) : super(
          author: author,
          title: title,
          description: description,
          url: url,
          urlToImage: urlToImage,
          publishedAt: publishedAt,
          content: content,
          sourceName: sourceName,
        );

  factory NewsArticleModel.fromJson(Map<String, dynamic> json) {
    return NewsArticleModel(
      sourceName: json['source']['name'],
      author: json['author'] ?? 'Unkown',
      title: json['title'],
      description: json['description'],
      url: json['url'] ?? '',
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      content: json['content'],
    );
  }
}

class SourceModel extends Source {
  SourceModel({required super.name, super.id});
  factory SourceModel.fromJson(Map<String, dynamic> json) {
    return SourceModel(
      id: json['id'],
      name: json['name'],
    );
  }
}
