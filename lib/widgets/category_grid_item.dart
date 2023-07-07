import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
// import 'package:flutter/widgets.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem(this.category, {super.key});

  final Category category;

  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          category.color.withOpacity(0.55),
          category.color.withOpacity(0.9),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.onBackground
        ),
      ),
    );
  }
}