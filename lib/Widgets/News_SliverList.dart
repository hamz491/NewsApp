import 'package:ecommerce/Models/NewsModel.dart';
import 'package:ecommerce/Widgets/News_Card.dart';
import 'package:flutter/material.dart';

class News_SliverList extends StatelessWidget {
  final List<NewsModel> data;
  News_SliverList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: data.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: NewsCard(data: data[index]),
          );
        },
      ),
    );
  }
}
