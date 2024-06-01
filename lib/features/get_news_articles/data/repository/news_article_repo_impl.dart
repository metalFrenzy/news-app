import '../sources/news_article_remote_source.dart';
import '../../domain/entities/news_articles.dart';
import '../../domain/repository/news_articles_repo.dart';

class NewsArticlesRepoImpl implements NewsArticlesRepo {
  NewsArticleRemoteSource newsArticleRemoteSource;
  NewsArticlesRepoImpl(this.newsArticleRemoteSource);
  @override
  Future<List<NewsArticles>> getNewsArticles() async {
    final articles = await newsArticleRemoteSource.getNewsArticles();
    return articles;
  }
}
