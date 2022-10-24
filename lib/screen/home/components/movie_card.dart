import 'package:flutter/material.dart';
import '../../../component/component.dart';
import '../../details/movies_details.dart';

class MovieCard extends StatefulWidget {
  const MovieCard(
      {Key? key,
      required this.movieName,
      required this.category,
      required this.year,
      required this.imdb,
      required this.imageUrl,
      required this.plot})
      : super(key: key);
  final String movieName;
  final String category;
  final String year;
  final String imageUrl;
  final String imdb;
  final String plot;
  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: Colors.grey,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            semanticContainer: true,
            elevation: 4,
            margin: const EdgeInsets.all(5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: GridTile(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieDetails(
                                movieName: widget.movieName,
                                movieCategory: widget.category,
                                movieImage: widget.imageUrl,
                                movieImdb: widget.imdb,
                                movieYear: widget.year,
                                plot: widget.plot,
                              )));
                },
                child: SizedBox(
                  height: h / 3.7,
                  width: w / 2.8,
                  child: Image.network(
                    "https://image.tmdb.org/t/p/original" + widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.movieName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.category,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: kTextLightColor),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.year,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    color: kPrimaryColor,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                color: kPrimaryColor,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      widget.imdb,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
