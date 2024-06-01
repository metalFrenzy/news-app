import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/retry.dart';
import 'package:news_app/features/get_news_articles/presentation/bloc/news_articles_bloc.dart';
import 'package:news_app/features/get_news_articles/presentation/widgets/loading_widget.dart';
import 'package:news_app/features/get_news_articles/presentation/widgets/message_display_widget.dart';
import 'package:news_app/features/get_news_articles/presentation/widgets/news_List_view_widget.dart';
import 'package:news_app/features/get_news_articles/presentation/widgets/no_news.dart';

import '../../../../injection_container.dart';
import '../cubit/theme_cubit.dart';


class NewsOverviewScreen extends StatelessWidget {
  const NewsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       actions: [
          BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, themeState) {
              return IconButton(
                onPressed: () {
                  context.read<ThemeCubit>().toggleTheme();
                },
                icon: Icon(
                  themeState is ThemeLight
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                  color: Theme.of(context).textTheme.bodyLarge!.color
                ),
              );
            },
          ),
        ],
        centerTitle: true,
        title: Text(
          'Frenzy News',
          style: Theme.of(context).textTheme.displayMedium
        ),
      ),
      body: BlocProvider(
        create: (context) => sl<NewsArticlesBloc>()
          ..add(
            GetNewArticlesEvent(),
          ),
        child: SafeArea(
          child: BlocBuilder<NewsArticlesBloc, NewsArticlesState>(
            builder: (context, state) {
              if (state is Empty) {
                return NoNews();
              } else if (state is Loading) {
                return LoadingWidget();
              } else if (state is Loaded) {
                return NewsListViewWidget(
                  newsArticleList: state.newsArticleList,
                );
              } else if (state is Error) {
                return MessageDisplay(message: state.message);
              }
              return Text('something went wrong');
            },
          ),
        ),
      ),
    );
  }
}
