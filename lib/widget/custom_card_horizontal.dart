import 'package:flutter/material.dart';

class CustomCardHorizontal extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;

  const CustomCardHorizontal({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    return SizedBox(
      // height: height*0.7,
      child: Card(
        elevation: 1,
        color: const Color(0xffFFFAB5),
        margin: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
