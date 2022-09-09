// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails(
      {Key? key,
      required this.movieImage,
      required this.movieName,
      required this.movieImdb,
      required this.movieCategory,
      required this.movieYear})
      : super(key: key);
  final String movieImage;
  final String movieName;
  final String movieImdb;
  final String movieCategory;
  final String movieYear;
  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration:
                    const BoxDecoration(borderRadius: BorderRadius.vertical()),
                child: Stack(
                  children: [
                    SizedBox(
                      height: h / 1.5,
                      width: w / 1,
                      child: Image.network(
                        widget.movieImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: CloseButton(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 4,
                child: Center(
                  child: Column(
                    children: [
                      Text("${widget.movieName}"),
                      Text("${widget.movieImdb}"),
                      Text("${widget.movieCategory}"),
                      Text("${widget.movieYear}"),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
