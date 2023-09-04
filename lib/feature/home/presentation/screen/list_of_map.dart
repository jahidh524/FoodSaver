import 'package:food_saver/feature/home/presentation/screen/home_page_model.dart';

List<HomePageCardModel> deliveryHomeCardData = [
  HomePageCardModel(
      title: 'Food Delivery',
      subtitle: 'On the way to deliver your food',
      imagePath: 'assets/home_page/delivery2.jpg'),
  HomePageCardModel(
      title: 'Become a Jackle',
      subtitle: 'Subtitle of this card',
      imagePath: 'assets/home_page/delivery.jpg'),
];

List<FoodCategoryModel> foodCategoryData = [
  FoodCategoryModel(
      caption: 'Cuinies', imageUrl: 'assets/home_page/food1.jpg'),
  FoodCategoryModel(
      caption: 'Rice', imageUrl: 'assets/home_page/food2.jpg'),
  FoodCategoryModel(
      caption: 'Chicken', imageUrl: 'assets/home_page/food3.jpg'),
  FoodCategoryModel(
      caption: 'Cuinies', imageUrl: 'assets/home_page/food1.jpg'),
];

List<TextOverlayModel> textOverlayData = [
  TextOverlayModel(
      imageUrl: 'assets/home_page/food1.jpg',
      textOverlay: 'Get 30% off on pick-up',
      title: 'Testy Treat',
      subtitle: '20m away'),
  TextOverlayModel(
      imageUrl: 'assets/home_page/food2.jpg',
      textOverlay: 'Get 25% off on set menu',
      title: 'Master Chef',
      subtitle: '40m away'),
  TextOverlayModel(
      imageUrl: 'assets/home_page/food3.jpg',
      textOverlay: 'Buy one get one',
      title: 'Callisto',
      subtitle: '16m away'),
  TextOverlayModel(
      imageUrl: 'assets/home_page/food1.jpg',
      textOverlay: 'Buy grill chicken, get nan free',
      title: 'Amirican Spicy',
      subtitle: '20m away')
];


List<ScrollableTextModel> scrollableTextData = [
  ScrollableTextModel(text: 'Popular'),
  ScrollableTextModel(text: 'Hot Deals'),
  ScrollableTextModel(text: 'Spicy'),
  ScrollableTextModel(text: 'Set Menu'),
  ScrollableTextModel(text: 'Top Rated'),
  ScrollableTextModel(text: 'Top Seller'),
  
];
