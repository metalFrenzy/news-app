part of 'news_articles_bloc.dart';

sealed class NewsArticlesState extends Equatable {
  const NewsArticlesState();

  @override
  List<Object> get props => [];
}

class Empty extends NewsArticlesState {}

class Loading extends NewsArticlesState {}

class Loaded extends NewsArticlesState {
  final List<NewsArticles> newsArticleList;
  Loaded({
    required this.newsArticleList,
  });
}

class Error extends NewsArticlesState {
  final String message;
  Error({
    required this.message,
  });
}

