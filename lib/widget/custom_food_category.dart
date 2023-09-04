import 'package:flutter/material.dart';

class CustomFoodCategory extends StatelessWidget {
  final String imageUrl;
  final String caption;

  const CustomFoodCategory({super.key, required this.imageUrl, required this.caption});

  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: 1.0,
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            height: 80.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              caption,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
