import 'package:flutter/material.dart';

import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(kDouble10),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: kDouble5),
            Image.asset('images/travel.png'),
            const Text('Travel'),
            const Text('Description of travel'),
            const SizedBox(height: kDouble10),
          ],
        ),
      ),
    );
  }
}
