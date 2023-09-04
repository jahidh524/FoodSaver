import 'package:flutter/material.dart';


class CustomCardTextOnImage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String overlayText;

  const CustomCardTextOnImage({super.key, 
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.overlayText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            // Overlay Text
            Container(
              alignment: Alignment.centerLeft,
              color: Colors.black.withOpacity(0.4),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  overlayText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Title and Subtitle
            Positioned(
              bottom: 8.0,
              left: 8.0,
              right: 8.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}