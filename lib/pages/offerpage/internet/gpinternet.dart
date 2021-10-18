import 'package:flutter/material.dart';
import 'package:testing/api/internetofferapi.dart';
import '../../../models/internetofferdatamodel.dart';
import 'internetoffercards.dart';
import 'dart:collection';

class GPInternet extends StatefulWidget {
  const GPInternet({Key? key}) : super(key: key);

  @override
  _GPInternetState createState() => _GPInternetState();
}

class _GPInternetState extends State<GPInternet> {
  final dropDownItems = ['Popularity', 'Price', 'Validity', 'Volume'];
  String? dropDownValue = 'Popularity';
  final _items = ['Popularity', 'Price', 'Validity', 'Volume'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FutureBuilder<List<InterOfferDataModel>>(
              future: InternetOfferApi.getInternetOfferDataLocally(context),
              builder: (context, snapshot) {
                final internetoffers = snapshot.data;

                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return const Center(child: CircularProgressIndicator());
                  default:
                    if (snapshot.hasError) {
                      return const Center(
                        child: Text('Some Error Occurred!'),
                      );
                    } else {
                      return buildInternetOffers(internetoffers!);
                    }
                }
              }),
        ),
      ],
    );
  }

  Widget buildInternetOffers(List<InterOfferDataModel> internetoffers) {
    // List?
    List? sorting(List a) {
      List<int> id = [];
      List price = [];
      List? internetPacks = [];
      for (int i = 0; i < a.length; i++) {
        id.add(a[i].id);
        price.add(a[i].tk);
        // // internetPacks.add([a[i].id, a[i].tk]);
        // internetPacks.add(SortCategories(int_no: id[i], int_price: price[i]));
      }
      var k;
      for (int j = 0; j < id.length; j++) {
        k = InternetPackSortCategories(int_id: id[j], int_price: price[j]);
        internetPacks.add(k);
      }
      print(internetPacks);
      print(id);
      print(price);
      internetPacks.sort((a, b) => a.int_price.compareTo(b.int_price));
      internetPacks.forEach((pack) => print(pack.int_id));

      // List<InternetPackSortCategories> int_packs = [
      // InternetPackSortCategories(int_id: );
      // ];
      // List<InternetPackSortCategories> packs = [
      //   InternetPackSortCategories(int_id: 101, int_price: 900),
      //   InternetPackSortCategories(int_id: 102, int_price: 1900),
      //   InternetPackSortCategories(int_id: 103, int_price: 500),
      //   InternetPackSortCategories(int_id: 104, int_price: 800)
      // ];
      //
      // print(packs);
    }

    // print(rooms[1]['roomBeds']);
    sorting(internetoffers);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.25, 0.5), //(x,y)
                  blurRadius: 1.0, // spreadRadius: 1.0, //extend the shadow
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 4, bottom: 4),
              child: Row(
                children: [
                  const Text(
                    'Sort by: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
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
                        icon: const Icon(Icons.expand_more),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: internetoffers.length,
              itemBuilder: (context, index) {
                final internetoffer = internetoffers[index];
                return GPInternetOfferCards(
                  internetoffer.day,
                  internetoffer.tk,
                  internetoffer.net,
                  internetoffer.coins,
                  internetoffer.facility,
                );
                // ('7 Days', 152, '13 GB', null, 'Limited Time Offer');
              }),
        ),
      ],
    );
  }
}

class InternetPackSortCategories {
  int? int_id;
  int? int_price;

  InternetPackSortCategories({this.int_id, this.int_price});

  // Map<String, dynamic> toMap() {
  //   return {'id': int_no, 'price': int_price};
  // }
}
