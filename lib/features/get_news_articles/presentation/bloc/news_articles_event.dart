part of 'news_articles_bloc.dart';

sealed class NewsArticlesEvent extends Equatable {
  const NewsArticlesEvent();

  @override
  List<Object> get props => [];
}


class GetNewArticlesEvent extends NewsArticlesEvent{}
