import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ModalRoute recebe a rota
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas Por Categoria ${category.id}'),
      ),
    );
  }
}
