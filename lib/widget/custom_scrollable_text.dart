
import 'package:flutter/material.dart';

class ScrollableText extends StatelessWidget {
  final String text;

  const ScrollableText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.fromLTRB(16, 0, 0, 0), 
      color: const Color(0xffFFFAB5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}