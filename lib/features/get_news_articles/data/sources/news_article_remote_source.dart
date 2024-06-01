import '../models/news_article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const apiKey = '0b24fcae7d26471c9f89188217d7e084';


class NewsArticleRemoteSource{
  final http.Client client;
  NewsArticleRemoteSource(this.client);

  Future<List<NewsArticleModel>> getNewsArticles() async {
    try {
      final response = await client.get(
        Uri.parse('https://newsapi.org/v2/everything?q=keyword&apiKey=$apiKey'),
      );
      final List<dynamic> jsonData = json.decode(response.body)['articles'];
      return jsonData.map((e) => NewsArticleModel.fromJson(e)).toList();
    } catch (error) {
      throw error;
    }
  }
}
