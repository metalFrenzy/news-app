import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/news_articles.dart';

class ArticleDetailsScreen extends StatelessWidget {
  final NewsArticles article;

  const ArticleDetailsScreen({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child:
                  article.urlToImage != null && article.urlToImage!.isNotEmpty
                      ? Image.network(
                          article.urlToImage!,
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          'assets/images/News-amico.png',
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
            ),
            const SizedBox(height: 16),
            Text(article.title,
                style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 8),
            Text('Source: ${article.sourceName}',
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 8),
            Text('Published At: ${article.publishedAt ?? 'Unknown Date'}',
                style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 16),
            Text(
              article.content ?? 'No Content Available',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
