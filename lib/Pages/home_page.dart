import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/models/catalogApp.dart';
import 'package:flutter_application_1/utills/widgets/drawer.dart';

import '../utills/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Flutter";

  @override
  void initState() {
    super.initState();
    localData();
  }

  localData() async {
    final catalogJson =
        await rootBundle.loadString("asstes/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var ProductsData = decodedData["Products"];
    print(ProductsData);
  }

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
