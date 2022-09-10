import 'package:flutter/material.dart';

import '../../home/components/movie_card.dart';

class FavoriteBody extends StatefulWidget {
  const FavoriteBody({Key? key}) : super(key: key);

  @override
  State<FavoriteBody> createState() => _FavoriteBodyState();
}

class _FavoriteBodyState extends State<FavoriteBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
      ),
    );
  }
}
