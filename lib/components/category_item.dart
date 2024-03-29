import 'package:flutter/material.dart';

import '../models/category.dart';
import '../utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  void _selectedCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    // InkWell/onTap detecta click
    return InkWell(
      onTap: () => _selectedCategory(context),
      // Cor baseado no tema após clicar
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15), //Borda arredondada
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), //Borda arredondada
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft, //Onde inicia o gradiente
            end: Alignment.bottomRight, //Onde finaliza o gradiente
          ),
        ),
      ),
    );
  }
}
