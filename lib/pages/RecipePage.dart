import 'package:detail_recipe/pages/detail_view.dart';
import 'package:detail_recipe/pages/nutrition_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  _RecipePageState createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
        // Navigasi back
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          // Gambar dengan teks di atasnya
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/nasgor.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 16.0,
                left: 16.0,
                child: Text(
                  "Nasi Goreng",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          // Tab Bar
          TabBar(
            controller: _tabController,
            tabs: [
              Tab(text: 'Ingredients'),
              Tab(text: 'Nutrition'),
              Tab(text: 'Details'),
            ],
            onTap: (index) {
              _tabController.animateTo(index);
            },
          ),
          // Tab Bar View
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Ingredients Tab
                Center(
                  child: Text('Ingredients'),
                ),
                // Nutrition Tab
                NutritionView(),
                // Details Tab
               RecipeDetailsPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Method to get the TabController
  TabController getTabController() {
    return _tabController;
  }
}
