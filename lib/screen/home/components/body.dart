import 'package:flutter/material.dart';
import '../../../component/component.dart';
import 'movie_card.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: kPrimaryColor,
                    width: 3.0,
                  ),
                ),
              ),
              child: const Text(
                " Popular",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),
              ),
            ),
          ),
          const MovieCard(
            year: "2022",
            movieName: "Jurassic World",
            category: "Fear",
            imdb: "7.2",
            imageUrl: "lib/assets/movieimage.jpg",
          ),
          const MovieCard(
            year: "2021",
            movieName: "Spider Man No way Home",
            category: "Actions",
            imdb: "7.0",
            imageUrl: "lib/assets/movieimage.jpg",
          ),
          const MovieCard(
            year: "2022",
            movieName: "They/Them",
            category: "Fear",
            imdb: "8.9",
            imageUrl: "lib/assets/movieimage.jpg",
          ),
          const MovieCard(
            year: "2022",
            movieName: "Jurassic World",
            category: "Fear",
            imdb: "8.2",
            imageUrl: "lib/assets/movieimage.jpg",
          ),
          const MovieCard(
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
