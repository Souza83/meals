import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos Cozinhar?!'),
      ),
      body: GridView(
        //Renderiza as grids com scroll
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //Cada elemento com extenção de 200 px
          childAspectRatio: 3 / 2, //Proporção de cada elemento (1,5 = 3 / 2)
          crossAxisSpacing: 20, //Espaçamento no eixo cruzado
          mainAxisSpacing: 20, //Espaçamento no eixo principal
        ),
        children: DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      ),
    );
  }
}
