import 'package:ecommerce/Models/CategoriesModel.dart';
import 'package:ecommerce/View/CategoryView.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.category, required this.CategoryName});
  CategoryModel category;
  final String CategoryName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: CategoryName,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 160,
        height: 85,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('${category.image}'),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            '${category.title}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
