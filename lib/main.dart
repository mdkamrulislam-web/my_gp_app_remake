import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          // centerTitle: true,
          title: const Text(
            'Offers',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          bottom: PreferredSize(
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                indicatorColor: Colors.white,
                tabs: const [
                  Tab(
                    child: Text(
                      'Internet',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Minutes',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Recharge Offers',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Gift Pack',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'My Offers',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Free Offers',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Bundle',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              preferredSize: const Size.fromHeight(40.0)),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: FaIcon(FontAwesomeIcons.search),
            ),
          ],
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text('Minutes'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Text('Tab 3'),
            ),
            Center(
              child: Text('Minutes'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Text('Tab 3'),
            ),
            Center(
              child: Text('Tab 3'),
            ),
          ],
        ),
      ),
    );
  }
}
