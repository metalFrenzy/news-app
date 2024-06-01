import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_app/core/errors/failure.dart';
import 'package:news_app/core/usescases/use_case.dart';
import 'package:news_app/features/get_news_articles/domain/usescases/news_articles_usescase.dart';
import '../../domain/entities/news_articles.dart';

part 'news_articles_event.dart';
part 'news_articles_state.dart';

const String SERVER_FAILURE_MESSAGE = 'Server Failure';

class NewsArticlesBloc extends Bloc<NewsArticlesEvent, NewsArticlesState> {
  final GetNewsArticlesUseCase getNewsArticlesUseCase;

  NewsArticlesState get initialState => Empty();

  NewsArticlesBloc({required this.getNewsArticlesUseCase}) : super(Empty()) {
    on<GetNewArticlesEvent>((event, emit) async {
      emit(Loading());
       try {
       final articles = await getNewsArticlesUseCase(NoPramas());
        emit(Loaded(newsArticleList: articles));
      } catch (error) {
        emit(Error(message: error.toString()));
      }
    });
      
  }
}

