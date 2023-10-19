import 'package:flutter/material.dart';
import 'package:proyecto_cine/presentation/views/movies/favorites_view.dart';
import 'package:proyecto_cine/presentation/views/movies/home_view.dart';
import 'package:proyecto_cine/presentation/widgets/shared/custom_bottom_navigation.dart';


class HomeScreen extends StatelessWidget {

  static const name = 'home-screen';
  final int pageIndex;

  const HomeScreen({
    super.key, 
    required this.pageIndex
  });

  final viewRoutes =  const <Widget>[
    HomeView(),
    SizedBox(), // <--- categorias View
    FavoritesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomBottomNavigation( currentIndex: pageIndex ),
    );
  }
}