import 'package:flutter/material.dart';
import 'package:movie_info/component/component.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key, required this.CategoriesName})
      : super(key: key);
  final String CategoriesName;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: kPrimaryColor,
        //automaticallyImplyLeading: false,
        title: Text(
          widget.CategoriesName,
          style: const TextStyle(color: kTextColor),
        ),
      ),
    );
  }
}
