import 'dart:convert';
import 'package:flutter/material.dart';
import 'movie_card.dart';
import 'movie_model.dart';
import 'movie_modeltmdb.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  late List<MovieModel> tumFilmler;
  late List<MovieModelTmdb> tumtmdbFilmler;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tumFilmler = [];
    tumtmdbFilmler = [];
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: veriKaynaginiOkutmdb(),
      builder: (BuildContext context, AsyncSnapshot sonuc) {
        if (sonuc.hasData) {
          tumtmdbFilmler = sonuc.data;

          return ListView.builder(
            itemCount: tumtmdbFilmler.length,
            itemBuilder: (context, index) {
              return MovieCard(
                year: tumtmdbFilmler[index].release_date,
                movieName: tumtmdbFilmler[index].title,
                category: tumtmdbFilmler[index].title,
                imdb: tumtmdbFilmler[index].release_date,
                imageUrl: tumtmdbFilmler[index].poster_path,
                plot: tumtmdbFilmler[index].overview,
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

  Future<List<MovieModelTmdb>> veriKaynaginiOkutmdb() async {
    var gelenJson = await DefaultAssetBundle.of(context)
        .loadString("lib/assets/movieimdb.json");
    debugPrint(gelenJson);

    List<MovieModelTmdb> filmListesi = (json.decode(gelenJson) as List)
        .map((mapYapisi) => MovieModelTmdb.fromJsonMap(mapYapisi))
        .toList();
    return filmListesi;
  }
}


/*https://image.tmdb.org/t/p/original */