class HomePageCardModel {
  final String title;
  final String subtitle;
  final String imagePath;

  HomePageCardModel({
    required this.title,
    required this.subtitle,
    required this.imagePath
  });
}

class FoodCategoryModel {
  final String caption;
  final String imageUrl;

  FoodCategoryModel({
    required this.caption,
    required this.imageUrl,
  });
}

class TextOverlayModel{
  final String textOverlay;
  final String imageUrl;
  final String title;
  final String subtitle;

  TextOverlayModel({
    required this.imageUrl,
    required this.textOverlay,
    required this.title,
    required this.subtitle
  });
}

class ScrollableTextModel{
  final String text;

  ScrollableTextModel({
    required this.text
  });
}