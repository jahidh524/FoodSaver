import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_saver/feature/home/presentation/screen/home_data_provider.dart';
import 'package:food_saver/widget/custom_app_bar.dart';
import 'package:food_saver/widget/custom_card_horizontal.dart';
import 'package:food_saver/widget/custom_card_text_on_image.dart';
import 'package:food_saver/widget/custom_card_vertical.dart';
import 'package:food_saver/widget/custom_food_category.dart';
import 'package:food_saver/widget/custom_scrollable_text.dart';
import 'package:food_saver/widget/custom_search_bar.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final homeDataList = ref.watch(homeDataProvider);
    final foodCategory = ref.watch(foodCategoryProvider);
    final textOverlayOnImage = ref.watch(textOverlayProvider);
    final scrollabletext = ref.watch(scrollableTextProvider);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: widget.title,
        // prefixIcon: const Icon(Icons.menu),
        postfixIcon: const CircleAvatar(
          backgroundImage: AssetImage('assets/home_page/profile.jpg'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffFFA477),
              ),
              child: Text(
                'Md. Jahid Hasan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Email'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Phone Number'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Log Out'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const CustomSearchBar(),
          SizedBox(
            height: height * 0.32,
            width: width,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.7,
                crossAxisCount: 2,
              ),
              itemCount: homeDataList.length,
              itemBuilder: (BuildContext context, int index) {
                final model = homeDataList[index];
                return CustomCardVertical(
                  imagePath: model.imagePath,
                  subtitle: model.subtitle,
                  title: model.title,
                );
              },
            ),
          ),
          CustomCardHorizontal(
              title: 'Cloud Kitchen',
              subtitle: 'Easy and Higenic Service',
              imagePath: homeDataList[1].imagePath),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: height * 0.05,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: scrollabletext.length,
              itemBuilder: (BuildContext context, int index) {
                return ScrollableText(
                  text: scrollabletext[index].text,
                );
              },
            ),
          ),
        
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Offers',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SizedBox(
              height: height * 0.47,
              width: width,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CustomCardTextOnImage(
                    imagePath: textOverlayOnImage[index].imageUrl,
                    title: textOverlayOnImage[index].title, // Title
                    subtitle: textOverlayOnImage[index].subtitle, // Subtitle
                    overlayText: textOverlayOnImage[index]
                        .textOverlay, // Text overlay on the image
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Dishes',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: height * 0.32,
            width: width,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: foodCategory.length,
              itemBuilder: (BuildContext context, int index) {
                final item = foodCategory[index];
                return CustomFoodCategory(
                  imageUrl: item.imageUrl,
                  caption: item.caption,
                );
              },
            ),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffFFA477),
        child: const Icon(Icons.add),
      ),
    );
  }
}
