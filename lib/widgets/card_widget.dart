import 'package:flutter/material.dart';
import 'package:space_dummyproj/class/item_class.dart';
import 'package:space_dummyproj/pages/descriptionpage.dart';

import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.param,
  });
  final ItemClass param;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return DescriptionPage(
              param: param,
            );
          },
        ));
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble10),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: kDouble5),
              Image.asset(param.imagePath),
              Text(param.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              Text("Description of${param.title}"),
              const SizedBox(height: kDouble10),
            ],
          ),
        ),
      ),
    );
  }
}
