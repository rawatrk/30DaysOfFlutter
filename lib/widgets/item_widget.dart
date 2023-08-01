import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade100,
      // shape: StadiumBorder(),
      // elevation: 0.0,
      child: ListTile(
        onTap: () {
          print('${item.name} pressed.');
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
            '\$${item.price.toString()}',
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
