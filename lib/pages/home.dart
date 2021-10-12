import 'package:flutter/material.dart';
import 'package:testing/pages/account.dart';
import 'package:testing/pages/dashboard.dart';
import 'package:testing/pages/explore.dart';
import 'package:testing/pages/menu.dart';
import 'package:testing/pages/offers.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
          child: Row(
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    // currentScreen = Explore();
                    currentScreen = Dashboard();
                    currentTab = 0;
                  });
                },
                //   child: Column(
                //     children: <Widget>[
                //       Icon(Icons.explore,
                //           color: currentTab == 0 ? Colors.blue : Colors.amber),
                //       Text(
                //         'Explore',
                //         style: TextStyle(
                //             color: currentTab == 0 ? Colors.blue : Colors.amber),
                //       ),
                //     ],
                //   ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
