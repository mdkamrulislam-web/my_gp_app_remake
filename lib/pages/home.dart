import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/pages/account.dart';
import 'package:testing/pages/dashboard.dart';
import 'package:testing/pages/explore.dart';
import 'package:testing/pages/menu.dart';
import 'package:testing/pages/offers.dart';
import 'package:testing/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Properties
  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Offers(),
    Explore(),
    Account(),
    Menu(),
  ]; //To store Tab views

  //Active Page (Tab)
  // Widget currentScreen = Dashboard();
  Widget currentScreen = Dashboard();
  final PageStorageBucket bucket = PageStorageBucket();
  bool pressed = true;
  String buttonText = 'Explore';

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
            pressed = !pressed;
            currentScreen = Explore();
            currentTab = 4;
          });
        },
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.explore,
          color: Colors.white,
          size: 55,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Bottom App Bar
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(
                    () {
                      // currentScreen = Explore();
                      currentScreen = Dashboard();
                      currentTab = 0;
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
                      currentScreen = Offers();
                      currentTab = 1;
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
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    buttonText,
                    style: pressed
                        ? kBottomAppBarTextUnseleted
                        : kBottomAppBarTextSeleted,
                  ),
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(
                    () {
                      // currentScreen = Explore();
                      currentScreen = Account();
                      currentTab = 2;
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
                      currentScreen = Menu();
                      currentTab = 3;
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
