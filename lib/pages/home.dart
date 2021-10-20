import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/pages/account.dart';
import 'package:testing/pages/dashboard.dart';
import 'package:testing/pages/explore.dart';
import 'package:testing/pages/menu.dart';
import 'package:testing/pages/offerpage/offers.dart';
import 'package:testing/customdesigns/exploreappicon.dart';

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

  Color explorebuttonbgcolor = Color(0xffFFFFFF).withOpacity(1.0);
  int angle = 0;
  Color tringle1 = Color(0xff2979BE).withOpacity(1.0);
  Color tringle2 = Color(0xff42A5DD).withOpacity(1.0);
  Color insideCircle = Color(0xffFFFFFF).withOpacity(1.0);

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
              angle = 180;
              explorebuttonbgcolor = Colors.blue;
              tringle1 = Colors.white;
              tringle2 = Colors.white;
              insideCircle = Colors.blue;
            });
          },
          backgroundColor: explorebuttonbgcolor,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(angle / 360),
            child: CustomPaint(
              size: Size(
                  60,
                  (60 * 1)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(
                  explorebuttonbgcolor, tringle1, tringle2, insideCircle),
            ),
          )),
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
                      explorebuttonbgcolor = Colors.white;
                      angle = 0;
                      tringle1 = Color(0xff2979BE).withOpacity(1.0);
                      tringle2 = Color(0xff42A5DD).withOpacity(1.0);
                      insideCircle = Color(0xffFFFFFF).withOpacity(1.0);
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
