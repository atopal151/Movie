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
            imageUrl:
                "https://m.media-amazon.com/images/M/MV5BOTBjMjA4NmYtN2RjMi00YWZlLTliYTktOTIwMmNkYjYxYmE1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg",
          ),
          MovieCard(
            year: "2021",
            movieName: "Spider Man No way Home",
            category: "Actions",
            imdb: "7.0",
            imageUrl:
                "https://gecbunlari.com/wp-content/uploads/2021/12/Spiderman-No-Way-Home.jpg",
          ),
          MovieCard(
            year: "2022",
            movieName: "They/Them",
            category: "Fear",
            imdb: "8.9",
            imageUrl:
                "https://m.media-amazon.com/images/M/MV5BNmVhMTFjN2QtODVkZi00MzVjLTlkOGItNmRkNWRhYmY4MGVjXkEyXkFqcGdeQXVyNjUxMjc1OTM@._V1_.jpg",
          ),
          MovieCard(
            year: "2022",
            movieName: "Jurassic World",
            category: "Fear",
            imdb: "8.2",
            imageUrl:
                "https://m.media-amazon.com/images/M/MV5BOTBjMjA4NmYtN2RjMi00YWZlLTliYTktOTIwMmNkYjYxYmE1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg",
          ),
          MovieCard(
            year: "2022",
            movieName: "Jurassic World",
            category: "Fear",
            imdb: "7.7",
            imageUrl:
                "https://m.media-amazon.com/images/M/MV5BOTBjMjA4NmYtN2RjMi00YWZlLTliYTktOTIwMmNkYjYxYmE1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg",
          ),
        ],
      ),
    );
  }
}
