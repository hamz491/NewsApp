import 'package:dio/dio.dart';
import 'package:ecommerce/Models/NewsModel.dart';
import 'package:flutter/material.dart';

class GetAllNews {
  final Dio dio = Dio();
  Future<List<NewsModel>> GetNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');

      Map<String, dynamic> data = response.data;
      List<dynamic> articles = data['articles'];
      List<NewsModel> News = [];
      for (var article in articles) {
        NewsModel articleModel = NewsModel.fromJson(json: article);
        News.add(articleModel);
      }
      debugPrint('-----------======> $News ');
      return News;
    } catch (ex) {
      return [];
    }
  }
}
