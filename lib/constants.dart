import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

TextStyle kBottomAppBarTextUnseleted = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w600); //fromRGBO(164, 164, 164, 1))

TextStyle kBottomAppBarTextSeleted =
    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600);

TextStyle kBottomAppBarToggle =
    TextStyle(color: Colors.grey, fontWeight: FontWeight.w600);

FaIcon kPackageIcon_bundle = FaIcon(Icons.inventory_2_outlined,
    color: Color.fromRGBO(51, 122, 187, 1), size: 30);

FaIcon kPackageIcon_net = FaIcon(FontAwesomeIcons.globe,
    color: Color.fromRGBO(51, 122, 187, 1), size: 30);

FaIcon kPackageIcon_phone = FaIcon(
  FontAwesomeIcons.phoneAlt,
  color: Color.fromRGBO(51, 122, 187, 1),
  size: 30,
);
