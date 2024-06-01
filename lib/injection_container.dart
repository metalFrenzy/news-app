import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'features/get_news_articles/data/repository/news_article_repo_impl.dart';
import 'features/get_news_articles/data/sources/news_article_remote_source.dart';
import 'features/get_news_articles/domain/usescases/news_articles_usescase.dart';
import 'features/get_news_articles/presentation/bloc/news_articles_bloc.dart';
import 'features/get_news_articles/domain/repository/news_articles_repo.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(
    () => NewsArticlesBloc(
      getNewsArticlesUseCase: sl(),
    ),
  );

  sl.registerLazySingleton(() => GetNewsArticlesUseCase(sl()));

  sl.registerLazySingleton<NewsArticlesRepo>(() => NewsArticlesRepoImpl(sl()));

  sl.registerLazySingleton(() => NewsArticleRemoteSource(sl()));

  sl.registerLazySingleton(() => http.Client());
}
