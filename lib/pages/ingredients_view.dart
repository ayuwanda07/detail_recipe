import 'package:flutter/material.dart';

class IngredientsView extends StatelessWidget {
  IngredientsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ingredients.length,
        itemBuilder: (context, index) {
            return _buildIngredientsItem(ingredients[index]);
        },
    );
  }

   Widget _buildIngredientsItem(String ingredient) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.green),
          SizedBox(width: 16.0),
          Expanded(
            child: Text(
              ingredient,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }

    final List<String> ingredients = [
        '1 buah paha ayam atas',
        '2 butir telur',
        '150 udang tanpa kulit',
        '5 buah bakso sapi',
        '5 buah bakso ayam',
        '500 g nasi putih',
        '2 sdm kecap manis Bango',
        '1/2 sdt garam',
        '1/2 sdt gula pasir',
        '2 buah daun bawang',
        '1 1/2 sdm bawang goreng',
        '3 sdm minyak goreng',
        '1 sdt terasi bakar',
    ];


}