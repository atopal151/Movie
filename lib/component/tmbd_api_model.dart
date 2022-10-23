import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tmdb_api/tmdb_api.dart';

Future<void> TmdbModel(List<String> args) async {
  //api with out console logs
  final tmdb = TMDB(ApiKeys('e97692b19158c4b53fec7bb7c5db39c6',
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlOTc2OTJiMTkxNThjNGI1M2ZlYzdiYjdjNWRiMzljNiIsInN1YiI6IjYzMDY2YjFjYjdkMzUyMDA4M2E5ZDhmZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Q1oOuCkRXs_Cwo9SGEt1jrwrTHMsFCuw1qoJfcvpj3E'));
  print(await tmdb.v3.movies.getPopular());

  //api with showing all console logs
  final tmdbWithLogs = TMDB(
    ApiKeys('e97692b19158c4b53fec7bb7c5db39c6',
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlOTc2OTJiMTkxNThjNGI1M2ZlYzdiYjdjNWRiMzljNiIsInN1YiI6IjYzMDY2YjFjYjdkMzUyMDA4M2E5ZDhmZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Q1oOuCkRXs_Cwo9SGEt1jrwrTHMsFCuw1qoJfcvpj3E'),
    logConfig: const ConfigLogger.showAll(),
  );
  print(await tmdbWithLogs.v3.movies.getPopular());

  //api with showing all console logs
  final tmdbWithCustomLogs = TMDB(
    ApiKeys('e97692b19158c4b53fec7bb7c5db39c6',
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJlOTc2OTJiMTkxNThjNGI1M2ZlYzdiYjdjNWRiMzljNiIsInN1YiI6IjYzMDY2YjFjYjdkMzUyMDA4M2E5ZDhmZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Q1oOuCkRXs_Cwo9SGEt1jrwrTHMsFCuw1qoJfcvpj3E'),
    logConfig: const ConfigLogger(
      //must be true than only all other logs will be shown
      showLogs: true,
      showErrorLogs: true,
    ),
  );
  print(await tmdbWithCustomLogs.v3.movies.getPopular());
}

List<mocModel> movieModelFromJson(String str) =>
    List<mocModel>.from(json.decode(str).map((x) => mocModel.fromJson(x)));

Future<mocModel> fetchMovie() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=e97692b19158c4b53fec7bb7c5db39c6&language=en-US&page=2'));

  if (response.statusCode == 200) {
    return mocModel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load users');
  }
}

class mocModel {
  List<dynamic> results;

  mocModel({required this.results});

  factory mocModel.fromJson(Map<String, dynamic> json) => mocModel(
        results: json["results"],
      );

  Map<String, dynamic> toJson() => {
        "results": results,
      };
}

class resultModel {
  int id;
  String original_title;

  resultModel({required this.id, required this.original_title});

  factory resultModel.fromJson(Map<String, dynamic> json) => resultModel(
        id: json["id"],
        original_title: json['original_title'],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "original_title": original_title,
      };
}
