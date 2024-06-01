import 'package:news_app/core/usescases/use_case.dart';
import 'package:news_app/features/get_news_articles/domain/entities/news_articles.dart';
import 'package:news_app/features/get_news_articles/domain/repository/news_articles_repo.dart';

class GetNewsArticlesUseCase implements UseCase<NewsArticles, NoPramas> {
  final NewsArticlesRepo repo;

  GetNewsArticlesUseCase(this.repo);

  @override
  Future<List<NewsArticles>> call(NoPramas params) async {
    return await repo.getNewsArticles();
  }
}
