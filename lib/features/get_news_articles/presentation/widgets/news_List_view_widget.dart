import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/features/get_news_articles/presentation/widgets/news_list_tile.dart';
import '../../domain/entities/news_articles.dart';

class NewsListViewWidget extends StatelessWidget {
  final List<NewsArticles> newsArticleList;
  NewsListViewWidget({required this.newsArticleList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsArticleList.length,
      itemBuilder: (context, index) {
        final article = newsArticleList[index];
        return NewsListTileWidget(
          article: article,
        );
      },
    );
  }
}
