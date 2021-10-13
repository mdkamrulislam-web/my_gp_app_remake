import 'package:flutter/material.dart';
import 'package:testing/offerpage/internet/internetoffercards.dart';

class GPInternet extends StatefulWidget {
  const GPInternet({Key? key}) : super(key: key);

  @override
  _GPInternetState createState() => _GPInternetState();
}

class _GPInternetState extends State<GPInternet> {
  final dropDownItems = ['Popularity', 'Price', 'Validity', 'Volume'];
  String? dropDownValue = 'Popularity';
  var _items = ['Popularity', 'Price', 'Validity', 'Volume'];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.25, 0.5), //(x,y)
                  blurRadius: 1.0, // spreadRadius: 1.0, //extend the shadow
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, top: 4, bottom: 4),
              child: Row(
                children: [
                  Text(
                    'Sort by: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        items: _items.map((String dropDownItems) {
                          return DropdownMenuItem<String>(
                            value: dropDownItems,
                            child: Text(dropDownItems),
                          );
                        }).toList(),
                        onChanged: (String? newSelectedValue) {
                          setState(() {
                            dropDownValue = newSelectedValue;
                          });
                        },
                        value: dropDownValue,
                        icon: Icon(Icons.expand_more),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const GPInternetOfferCards(
            '7 Days', 152, '13 GB', null, 'Limited Time Offer'),
        const GPInternetOfferCards('30 Days', 516, '50 GB', null, ''),
        const GPInternetOfferCards(
            '30 Days', 308, '7 GB', 253, '16.7% bonus included'),
        const GPInternetOfferCards(
            '7 Days', 94, '3 GB', 77, '20% bonus included'),
        const GPInternetOfferCards(
            '7 Days', 198, '14.3 GB', 163, '10% bonus included'),
        const GPInternetOfferCards(
            '72 Hours', 69, '4 GB', 57, '14.3% bonus included'),
      ],
    );
  }
}
