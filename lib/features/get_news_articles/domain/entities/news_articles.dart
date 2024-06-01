import 'package:equatable/equatable.dart';

class NewsArticles extends Equatable {
  final String sourceName;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  NewsArticles({
    required this.sourceName,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  @override
  List<Object?> get props => [
        sourceName,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
      ];
}

class Source extends Equatable {
  final String? id;
  final String? name;

  Source({this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}
