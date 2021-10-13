import 'package:flutter/material.dart';

class GPTabBar extends StatelessWidget {
  const GPTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
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
    );
  }
}
