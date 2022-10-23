import 'package:flutter/material.dart';
import 'package:movie_info/component/tmbd_api_model.dart';
import 'package:tmdb_api/tmdb_api.dart';

class FavoriteBody extends StatefulWidget {
  const FavoriteBody({Key? key}) : super(key: key);

  @override
  State<FavoriteBody> createState() => _FavoriteBodyState();
}

class _FavoriteBodyState extends State<FavoriteBody> {
  late Future<mocModel> futureMovie;

  @override
  void initState() {
    super.initState();
    futureMovie = fetchMovie();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<mocModel>(
      future: futureMovie,
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data?.results.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data!.results[index].toString()),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
