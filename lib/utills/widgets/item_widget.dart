import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalogApp.dart';

class itemWidget extends StatelessWidget {
  final Item item;

  const itemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(
          item.desc,
          style: TextStyle(color: Colors.green),
        ),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.1,
          style: TextStyle(color: Colors.green),
        ),
      ),
    );
  }
}
