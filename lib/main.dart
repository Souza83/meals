import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar!!!',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromRGBO(255, 254, 229, 1), //Cor do Background
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      // Cria rotas entre telas
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        //AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
      /* // Cria rotas dinâmicas baseadas no nome da rota
      onGenerateRoute: (settings) {
        if (settings.name == '/alguma-rota') {
          return null;
        } else if (settings.name == '/outra-rota') {
          return null;
        } else {
          return MaterialPageRoute(
            builder: (_) {
              return CategoriesScreen();
            },
          );
        }
      }, */
      // onUnknownRoute função em caso de rota desconhecida (pag ñ encontrada)
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) {
            return CategoriesScreen();
          },
        );
      },
    );
  }
}
