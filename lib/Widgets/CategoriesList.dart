import 'package:ecommerce/Models/CategoriesModel.dart';
import 'package:ecommerce/Widgets/CategoriesCard.dart';
import 'package:flutter/material.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});
  List<CategoryModel> categorylist = [
    CategoryModel(image: 'assets/Business.jpg', title: 'Business'),
    CategoryModel(image: 'assets/entertainment1.jpg', title: 'Entertainment'),
    CategoryModel(image: 'assets/health.jpg', title: 'Health'),
    CategoryModel(image: 'assets/science.avif', title: 'Science'),
    CategoryModel(image: 'assets/sports2.jpg', title: 'Sports'),
    CategoryModel(image: 'assets/tech.jpg', title: 'Technology'),
    CategoryModel(image: 'assets/newspaper2.jpg', title: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorylist.length,
        itemBuilder: (context, index) {
          return CustomCard(
            category: categorylist[index],
            CategoryName: categorylist[index].title,
          );
        },
      ),
    );
    ;
  }
}
