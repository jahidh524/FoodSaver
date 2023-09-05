import 'package:flutter/material.dart';

class CustomFoodCategory extends StatelessWidget {
  final String imageUrl;
  final String caption;

  const CustomFoodCategory(
      {super.key, required this.imageUrl, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          caption,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Image.asset(
          imageUrl,
          fit: BoxFit.cover,
          height: 100.0,
        ),
      ],
    );
  }
}
