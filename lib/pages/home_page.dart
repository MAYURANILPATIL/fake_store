import 'package:flutter/material.dart';

import '../Widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fake Store"),
      ),
      drawer: MyDrawer(),
    );
  }
}
