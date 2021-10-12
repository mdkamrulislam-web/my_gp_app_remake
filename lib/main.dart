import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bundlecard.dart';

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
        backgroundColor: Colors.white,
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
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w800,
                ),
                isScrollable: true,
                unselectedLabelColor: Colors.white.withOpacity(0.8),
                indicatorColor: Colors.white,
                unselectedLabelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                ),
                tabs: const [
                  Padding(
                    padding: EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Tab(
                      child: Text(
                        'Internet',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Tab(
                      child: Text(
                        'Minutes',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Tab(
                      child: Text(
                        'Recharge Offers',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Tab(
                      child: Text(
                        'Gift Pack',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Tab(
                      child: Text(
                        'My Offers',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Tab(
                      child: Text(
                        'Free Offers',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0, right: 4.0),
                    child: Tab(
                      child: Text(
                        'Bundle',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              preferredSize: const Size.fromHeight(40.0)),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16.0, top: 12),
              child: FaIcon(FontAwesomeIcons.search),
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('Minutes'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 20.0, bottom: 24),
                    child: Row(
                      children: const [
                        Text(
                          'Note: ',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'The offers will activate with recharge',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  PackageCard(),
                  PackageCard(),

                  // BundleCard(),
                ],
              ),
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
