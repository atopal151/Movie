import 'dart:convert';
import 'package:flutter/material.dart';
import '../../../component/component.dart';
import 'movie_card.dart';

class MovieModel {
  String Title;
  String Year;
  String Rated;
  String Genre;
  String Runtime;
  String Director;
  String Plot;
  List Images;
  String imdbRating;

  MovieModel.fromJsonMap(Map<String, dynamic> map)
      : Title = map["Title"],
        Year = map["Year"],
        Rated = map["Rated"],
        Runtime = map["Runtime"],
        Images = map["Images"],
        Genre = map["Genre"],
        Director = map["Director"],
        Plot = map["Plot"],
        imdbRating = map["imdbRating"];
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  late List<MovieModel> tumFilmler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumFilmler = [];
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: veriKaynaginiOku(),
      builder: (BuildContext context, AsyncSnapshot sonuc) {
        if (sonuc.hasData) {
          tumFilmler = sonuc.data;

          return ListView.builder(
            itemCount: tumFilmler.length,
            itemBuilder: (context, index) {
              return MovieCard(
                year: tumFilmler[index].Year,
                movieName: tumFilmler[index].Title,
                category: tumFilmler[index].Genre,
                imdb: tumFilmler[index].imdbRating,
                imageUrl: tumFilmler[index].Images[1],
                plot: tumFilmler[index].Plot,
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Future<List<MovieModel>> veriKaynaginiOku() async {
    var gelenJson = await DefaultAssetBundle.of(context)
        .loadString("lib/assets/movie.json");
    debugPrint(gelenJson);

    List<MovieModel> filmListesi = (json.decode(gelenJson) as List)
        .map((mapYapisi) => MovieModel.fromJsonMap(mapYapisi))
        .toList();
    return filmListesi;
  }
}
