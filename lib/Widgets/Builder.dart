import 'package:ecommerce/Models/NewsModel.dart';
import 'package:ecommerce/Services/GetNews.dart';
import 'package:ecommerce/Widgets/News_SliverList.dart';
import 'package:flutter/material.dart';

class BuilderPage extends StatefulWidget {
  const BuilderPage({super.key, required this.category});
  final String category;
  @override
  State<BuilderPage> createState() => _BuilderPageState();
}

class _BuilderPageState extends State<BuilderPage> {
  var future;

  @override
  void initState() {
    super.initState();
    future = GetAllNews().GetNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return News_SliverList(
            data: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text('oops There was An Error'),
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
