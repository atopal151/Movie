import 'package:flutter/material.dart';
import 'package:movie_info/component/component.dart';

import '../screen/home/components/movie_card.dart';

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
        title: Text(
          widget.CategoriesName,
          style: const TextStyle(color: kTextColor),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          MovieCard(
            year: "2022",
            movieName: "Jurassic World",
            category: "Fear",
            imdb: "7.2",
            imageUrl: "lib/assets/movieimage.jpg",
          ),
          MovieCard(
            year: "2021",
            movieName: "Spider Man No way Home",
            category: "Actions",
            imdb: "7.0",
            imageUrl: "lib/assets/movieimage.jpg",
          ),
          MovieCard(
            year: "2022",
            movieName: "They/Them",
            category: "Fear",
            imdb: "8.9",
            imageUrl: "lib/assets/movieimage.jpg",
          ),
          MovieCard(
            year: "2022",
            movieName: "Jurassic World",
            category: "Fear",
            imdb: "8.2",
            imageUrl: "lib/assets/movieimage.jpg",
          ),
          MovieCard(
            year: "2022",
            movieName: "Jurassic World",
            category: "Fear",
            imdb: "7.7",
            imageUrl: "lib/assets/movieimage.jpg",
          ),
        ],
      )),
    );
  }
}
