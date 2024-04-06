import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailView extends StatelessWidget {
  const DetailView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Row(
                    children: [
                      ItemInfo(imagePath: 'assets/clock.png', text: '90 minutes'),
                      SizedBox(width: 40), // Add some space between items
                      ItemInfo(imagePath: 'assets/chef.png', text: 'Easy'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Reduce vertical padding
            child: Text(
              "Lorem ipsum dolor sit amet consectetur. "
              "Fermentum neque id habitant sed et tellus "
              "gravida amet placerat. Felis consequat nec "
              "consectetur volutpat dolor ultricies. Morbi quis "
              "at lobortis in nisi velit sit pellentesque sed.",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  final String imagePath;
  final String text;

  const ItemInfo({Key? key, required this.imagePath, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath, width: 50, height: 50),
        SizedBox(height: 4),
        Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // Set fontWeight to bold
        ),
      ],
    );
  }
}
