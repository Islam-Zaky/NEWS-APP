import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news2/models/article_model.dart';
import 'package:news2/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: NewsTile(
              articleModel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
