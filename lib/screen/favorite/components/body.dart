import 'dart:convert';

import 'package:flutter/material.dart';

import '../../home/components/movie_card.dart';
import '../../home/components/movie_model.dart';

class FavoriteBody extends StatefulWidget {
  const FavoriteBody({Key? key}) : super(key: key);

  @override
  State<FavoriteBody> createState() => _FavoriteBodyState();
}

class _FavoriteBodyState extends State<FavoriteBody> {
  late List<MovieModel> tumFilmler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumFilmler = [];
  }

  @override
  Widget build(BuildContext context) {
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
