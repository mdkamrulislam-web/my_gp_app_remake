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
    List<dynamic> sorting(List a) {
      List<int> id = [];
      List price = [];
      List? internetPacks = [];
      List? indexNo = [];
      for (int i = 0; i < a.length; i++) {
        id.add(a[i].id);
        price.add(a[i].tk);
      }
      var k;
      for (int i = 0; i < id.length; i++) {
        indexNo.add(id.indexOf(id[i]));
      }
      for (int j = 0; j < id.length; j++) {
        k = InternetPackSortCategories(
            int_id: id[j], int_price: price[j], index: indexNo[j]);
        internetPacks.add(k);
      }
      List? sortedListIndex = [];
      internetPacks.sort((a, b) => a.int_price.compareTo(b.int_price));
      internetPacks.forEach((pack) => sortedListIndex.add(pack.index));
      print(sortedListIndex);
      return sortedListIndex;
    }

    sorting(internetoffers);

    List selectedList() {
      if (dropDownValue == "Price") {
        List x = sorting(internetoffers);
        return x;
      } else {
        List x = [];
        for (int i = 0; i < sorting(internetoffers).length; i++) {
          x.add(i);
        }
        return x;
      }
    }

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
                final internetoffer = internetoffers[
                    selectedList()[index]]; //sorting(internetoffers)[index]
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
  int? index;

  InternetPackSortCategories({this.int_id, this.int_price, this.index});

  // Map<String, dynamic> toMap() {
  //   return {'id': int_no, 'price': int_price};
  // }
}
