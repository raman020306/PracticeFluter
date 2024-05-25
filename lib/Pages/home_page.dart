import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalogApp.dart';
import 'package:flutter_application_1/utills/widgets/drawer.dart';

import '../utills/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogApp.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogApp.items != null && CatalogApp.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogApp.items.length,
                itemBuilder: (context, index) =>itemWidget(
                    item: CatalogApp.items[index],
                  ),
      
              )
            : Center(
              child: CircularProgressIndicator(),
            ),
      ),
      drawer: Mydrawer(),
    );
  }
}
