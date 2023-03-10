import 'package:flutter/material.dart';
import 'package:space_dummyproj/class/item_class.dart';
// import 'package:space_dummyproj/core/constants.dart';
import 'package:space_dummyproj/widgets/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AppBar")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(param: ItemClass(title: 'Rocket', imagePath: 'images/rocket.png')),
            Row(
              children: [
                Expanded(child: CardWidget(param: ItemClass(title: 'Space', imagePath: 'images/space.png'))),
                Expanded(child: CardWidget(param: ItemClass(title: 'Travel', imagePath: 'images/travel.png'))),
              ],
            ),
            CardWidget(param: ItemClass(title: "You", imagePath: 'images/yeah.png')),
          ],
        ),
      ),
    );
  }
}
