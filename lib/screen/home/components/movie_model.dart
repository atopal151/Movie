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
