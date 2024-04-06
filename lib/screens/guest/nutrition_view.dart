import 'package:flutter/material.dart';

class NutritionView extends StatelessWidget {
  

  const NutritionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3,
          children: [
            _buildNutritionItem('300 kalori'),
            _buildNutritionItem('6 gram protein'),
            _buildNutritionItem('15 gram lemak'),
            _buildNutritionItem('180g karbohidrat'),
          ],
        ),
    );
  }
   Widget _buildNutritionItem(String text) {
    return Container(
      padding: EdgeInsets.all(8.0),

      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }


}