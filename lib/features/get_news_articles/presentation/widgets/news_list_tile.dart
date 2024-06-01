import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../domain/entities/news_articles.dart';
import '../screens/news_detail_screen.dart';

class NewsListTileWidget extends StatelessWidget {
  final NewsArticles article;

  const NewsListTileWidget({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArticleDetailsScreen(article: article),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 12,
          right: 12,
          top: 8,
          bottom: 8,
        ),
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // Shadow position (horizontal, vertical)
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child:
                  article.urlToImage != null && article.urlToImage!.isNotEmpty
                      ? Image.network(
                          article.urlToImage!,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          'assets/images/News-amico.png',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyLarge,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    article.sourceName,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
