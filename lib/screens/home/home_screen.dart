import 'package:flutter/material.dart';
import '../../widgets/backdrop_widget.dart';
import '../../models/product.dart';
import '../category/category_menu_screen.dart';
import '../products/products_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Category _currentCategory = Category.all;

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Backdrop(
      currentCategory: _currentCategory,
      frontLayer: ProductsScreen(category: _currentCategory), // ProductsScreen에 category 전달
      backLayer: CategoryMenuScreen(
        currentCategory: _currentCategory,
        onCategoryTap: _onCategoryTap,
      ),
      frontTitle: const Text('마이 드레스 룸'),
      backTitle: const Text('카테고리 선택'),
    );
  }
}