class MovieModelTmdb {
  String title;
  String release_date;
  String overview;
  String poster_path;
  //int vote_average;

  MovieModelTmdb.fromJsonMap(Map<String, dynamic> map)
      : title = map["title"],
        release_date = map["release_date"],
        poster_path = map["poster_path"],
        overview = map["overview"];
  //vote_average = map["vote_average"];
}


/*
{
    "overview":"When a drug to replicate plant cells creates a sentient form of flower, the planet is over taken by flora and humankind is depleted. A Chinese task force, a widowed father and his young daughter fight to survive in a mission to inject an antidote to the core of the plants to reverse their growth.",
    "poster_path":"/kl80N1g69v9QXe1wvkFza31WhD4.jpg",
    "release_date":"2021-09-03",
    "title":"Restart The Earth",
    "vote_average":6.8,
    },


 */