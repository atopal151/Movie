// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:movie_info/component/component.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails(
      {Key? key,
      required this.movieImage,
      required this.movieName,
      required this.movieImdb,
      required this.movieCategory,
      required this.movieYear,
      required this.plot})
      : super(key: key);
  final String movieImage;
  final String movieName;
  final String movieImdb;
  final String movieCategory;
  final String movieYear;
  final String plot;
  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: h * 0.4,
                  child: Stack(children: [
                    Container(
                      height: h * 0.4 - 40,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  "https://image.tmdb.org/t/p/original" +
                                      widget.movieImage))),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CloseButton(
                        color: Colors.white,
                      ),
                    )
                  ]),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: w * 0.9,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topLeft: Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 5),
                            blurRadius: 40,
                            color: Colors.black.withOpacity(0.2)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.local_movies,
                                color: kPrimaryColor,
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: "${widget.movieCategory}",
                                      style: const TextStyle(
                                          color: kTextLightColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.star,
                                color: kPrimaryColor,
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: "${widget.movieImdb}",
                                      style: const TextStyle(
                                          color: kTextLightColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.movie_creation,
                                color: kPrimaryColor,
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: "${widget.movieYear}",
                                      style: const TextStyle(
                                          color: kTextLightColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "${widget.movieName}",
                          style: const TextStyle(
                              color: kTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: const [
                      Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: kPrimaryColor,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "${widget.plot}",
                          style: const TextStyle(
                              color: kTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          "Category",
                          style: TextStyle(
                              color: kTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "${widget.movieCategory}",
                          style: const TextStyle(
                              color: kTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
