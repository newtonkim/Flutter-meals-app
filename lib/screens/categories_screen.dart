import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Category Please'),
      ),
      body: GridView(
        padding:const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children:[
        // alternative for the for loop use the map as below
      // availableCategories.map((category) => CategoryGridItem(category)).toList()
          for(final category in availableCategories)
          CategoryGridItem(category)

        ],
      ),
    );
  }
}
