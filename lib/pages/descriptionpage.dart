import 'package:flutter/material.dart';
import 'package:space_dummyproj/class/item_class.dart';
import 'package:space_dummyproj/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.param,
  });

  final ItemClass param;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double customFontsize = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.param.title),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("This is a snackbar"),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(widget.param.imagePath),
              Wrap(
                spacing: kDouble20,
                children: [
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        customFontsize = 35;
                      });
                    },
                    child: const Text("Small Title"),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        customFontsize = 45;
                      });
                    },
                    child: const Text("Medium Title"),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        customFontsize = 55;
                      });
                    },
                    child: const Text("Large Title"),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        customFontsize = 100;
                      });
                    },
                    child: const Text("Huge Title"),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.param.title,
                  style: TextStyle(
                    fontSize: customFontsize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: kDouble10),
              const Text(
                loremDescription,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: kDouble10)
            ],
          ),
        ),
      ),
    );
  }
}
