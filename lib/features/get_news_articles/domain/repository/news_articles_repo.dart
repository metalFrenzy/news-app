import '../entities/news_articles.dart';

abstract class NewsArticlesRepo {
  Future<List<NewsArticles>> getNewsArticles();
}
