import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../offerpage/gptabbar.dart';
import '../offerpage/gptabbarbody.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
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
          bottom: const PreferredSize(
              child: GPTabBar(), preferredSize: Size.fromHeight(40.0)),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 16.0, top: 12),
              child: FaIcon(FontAwesomeIcons.search),
            ),
          ],
        ),
        body: const GPTabBarBody(),
      ),
    );
  }
}
