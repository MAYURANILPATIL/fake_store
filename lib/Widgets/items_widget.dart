// ignore_for_file: unrelated_type_equality_checks
import 'package:flutter/material.dart';
import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key? key, required this.item})
      : assert(item != Null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
            shape: const StadiumBorder(),
            child: ListTile(
              onTap: () {
                print("${item.title} pressed");
              },
              leading: Image.network(item.image!),
              title: Text(item.title!),
              subtitle: Text(item.description!),
              trailing: Text(
                "\$${item.price!}".toString(),
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )));
  }
}
