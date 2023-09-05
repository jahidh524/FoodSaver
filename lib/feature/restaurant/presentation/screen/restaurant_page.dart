import 'package:flutter/material.dart';
import 'package:food_saver/feature/restaurant/presentation/screen/custom_restaurant_card.dart';
import 'package:food_saver/widget/custom_app_bar.dart';

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomAppBar(
        appBarTitle: 'Restaurants',
        postfixIcon: CircleAvatar(
          backgroundImage: AssetImage('assets/home_page/profile.jpg'),
        ),
      ),
      body: CustomRestaurantCard(
        firstLineText: 'Burger king',
        imagePath: 'assets/home_page/food1.jpg',
        overlayText: '30% discount',
        secondLineText: '20m away',
      ),
    );
  }
}
