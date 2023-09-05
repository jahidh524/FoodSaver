import 'package:flutter/material.dart';

class CustomRestaurantCard extends StatelessWidget {
  final String imagePath;
  final String overlayText;
  final String firstLineText;
  final String secondLineText;

  const CustomRestaurantCard({super.key, 
    required this.imagePath,
    required this.overlayText,
    required this.firstLineText,
    required this.secondLineText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 200, 
                  width: double.infinity,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover, 
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      overlayText,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                firstLineText,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                secondLineText,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}