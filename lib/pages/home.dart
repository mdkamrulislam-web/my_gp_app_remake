import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/pages/account.dart';
import 'package:testing/pages/dashboard.dart';
import 'package:testing/pages/explore.dart';
import 'package:testing/pages/menu.dart';
import 'package:testing/pages/offerpage/offers.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Properties
  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard(),
    const Offers(),
    const Explore(),
    const Account(),
    const Menu(),
  ]; //To store Tab views

  Widget currentScreen = const Dashboard();
  final PageStorageBucket bucket = PageStorageBucket();
  bool pressed = false;
  String buttonText = 'Explore';

  Color? exploreButtonCheck() {
    if (pressed == true) {
      Color x = Colors.blue;
      return x;
    }
    if (pressed == false) {
      Color x = Colors.grey;
      return x;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            pressed = true;
            currentScreen = const Explore();
            currentTab = 4;
          });
        },
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.explore,
          color: Colors.white,
          size: 55,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Bottom App Bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(
                    () {
                      // currentScreen = Explore();
                      currentScreen = const Dashboard();
                      currentTab = 0;
                      pressed = false;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home_outlined,
                        color: currentTab == 0 ? Colors.blue : Colors.grey),
                    Text(
                      'Home',
                      style: TextStyle(
                          color: currentTab == 0 ? Colors.blue : Colors.grey),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = const Offers();
                      currentTab = 1;
                      pressed = false;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.gift,
                        color: currentTab == 1 ? Colors.blue : Colors.grey),
                    Text(
                      'Offers',
                      style: TextStyle(
                          color: currentTab == 1 ? Colors.blue : Colors.grey),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 12),
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: exploreButtonCheck(),
                    ),
                  ),
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(
                    () {
                      // currentScreen = Explore();
                      currentScreen = const Account();
                      currentTab = 2;
                      pressed = false;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.person_outline,
                        color: currentTab == 2 ? Colors.blue : Colors.grey),
                    Text(
                      'Account',
                      style: TextStyle(
                          color: currentTab == 2 ? Colors.blue : Colors.grey),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(
                    () {
                      // currentScreen = Explore();
                      currentScreen = const Menu();
                      currentTab = 3;
                      pressed = false;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.menu,
                        color: currentTab == 3 ? Colors.blue : Colors.grey),
                    Text(
                      'Menu',
                      style: TextStyle(
                          color: currentTab == 3 ? Colors.blue : Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
