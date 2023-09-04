import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_saver/feature/home/presentation/screen/home_page.dart';

class BottomTabBar extends StatefulWidget {
  final int index;
  const BottomTabBar(this.index, {Key? key}) : super(key: key);
  @override
  BottomTabBarState createState() => BottomTabBarState(index);
}

class BottomTabBarState extends State<BottomTabBar> {
  int _selectedIndex = 0;
  BottomTabBarState(index) {
    _selectedIndex = index;
  }
  Widget _buildBody() {
   // print("index in buld$_selectedIndex");
    switch (_selectedIndex) {
      case 0:
        return const MyHomePage(title: 'Food Saver');
      // case 1:
      //   return const CommunityListScreen();
      // case 2:
      //   return const CreateCommunityScreen();
      // case 3:
      //   return const ProfileScreen();
      default:
        return const SizedBox.shrink();
    }
  }

  _changeIndex({required int index}) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: _buildBody(),
        bottomNavigationBar: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: 65,
                child: Card(
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    currentIndex: _selectedIndex,
                    backgroundColor: const Color(0xffFFA477),
                    selectedItemColor: const Color(0xffFFFAB5),
                    unselectedItemColor: Colors.black,
                    onTap: (value) {
                      //print("check value$value");
                      setState(() {
                        _changeIndex(index: value);
                      });
                    },
                    items: _buildBottomNavigationBarItems(),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
      onWillPop: () async {
        if (_selectedIndex != 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomTabBar(0),
            ),
          );
          return false;
        } else {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        }
        return false;
      },
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavigationBarItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.restaurant),
        label: 'Restruants',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'Favourite',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.paid),
        label: 'My Orders',
      ),
    ];
  }
}
