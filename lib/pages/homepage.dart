import 'package:flutter/material.dart';
import 'package:space_dummyproj/class/item_class.dart';
// import 'package:space_dummyproj/core/constants.dart';
import 'package:space_dummyproj/widgets/card_widget.dart';
import 'package:space_dummyproj/core/notifiers.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkMode.value = !isDarkMode.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkMode,
          builder: (BuildContext context, dynamic isDark, Widget? child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
