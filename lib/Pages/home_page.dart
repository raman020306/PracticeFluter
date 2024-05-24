import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogApp.dart';
import 'package:flutter_application_1/utills/widgets/drawer.dart';

import '../utills/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Flutter";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogApp.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: ((context, index) {
          return itemWidget(item: dummyList[index]);
        })),
      ),
      drawer: Mydrawer(),
    );
  }
}
