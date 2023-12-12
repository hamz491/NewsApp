import 'package:ecommerce/Widgets/Builder.dart';
import 'package:ecommerce/Widgets/CategoriesList.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News'),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesList()),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            const BuilderPage(category: 'general'),
          ],
        ),
      ),
    );
  }
}
