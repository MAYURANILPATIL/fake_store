import 'package:flutter/material.dart';
import 'package:flutter_application_1/http_service.dart';
import 'package:flutter_application_1/models/catalog.dart';

import '../Widgets/items_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Item> items = [];
  String status = "loading";
  HttpService service = HttpService();

  getData() {
    setState(() {
      status = "loading";
    });
    service.getPosts().then((value) {
      setState(() {
        status = "completed";
      });
      items = value;
    });
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        if (status == "loading") {
          return const Scaffold(
            backgroundColor: Colors.red,
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return buildWidget(context);
      },
    );
  }

  Widget buildWidget(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ItemWidget(item: items[index]);
        },
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Fake Store"),
  //     ),
  //     body: Padding(
  //       padding: const EdgeInsets.all(16.0),
  //       child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
  //           ? ListView.builder(
  //               itemCount: CatalogModel.items.length,
  //               itemBuilder: (context, index) {
  //                 return ItemWidget(
  //                   item: CatalogModel.items[index],
  //                 );
  //               },
  //             )
  //           : Center(
  //               child: CircularProgressIndicator(),
  //             ),
  //     ),
  //     drawer: MyDrawer(),
  //   );
  // }
}
