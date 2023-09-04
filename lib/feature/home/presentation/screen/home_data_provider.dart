import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_saver/feature/home/presentation/screen/home_page_model.dart';
import 'package:food_saver/feature/home/presentation/screen/list_of_map.dart';

final homeDataProvider = StateProvider<List<HomePageCardModel>>(
  (ref) {
   return deliveryHomeCardData;
  },
);


final foodCategoryProvider = StateProvider<List<FoodCategoryModel>>(
  (ref) {
   return foodCategoryData;
  },
);

final textOverlayProvider = StateProvider<List<TextOverlayModel>>(
  (ref) {
   return textOverlayData;
  },
);

final scrollableTextProvider = StateProvider<List<ScrollableTextModel>>(
  (ref) {
   return scrollableTextData;
  },
);