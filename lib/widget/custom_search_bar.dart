import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: Card(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Implement your menu functionality here
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
