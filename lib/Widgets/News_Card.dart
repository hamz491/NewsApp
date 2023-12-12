import 'package:ecommerce/Models/NewsModel.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  NewsCard({super.key, required this.data});
  final NewsModel data;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: data.image != null
                ? Image.network(
                    '${data.image}',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    'assets/ImageNotFound.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
        const SizedBox(height: 8),
        Text(
          '${data.title}' ?? 'Not Found',
          maxLines: 2,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          '${data.subtitle}' ?? 'NOT Found',
          maxLines: 2,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
