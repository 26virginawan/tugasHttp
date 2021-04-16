class Movie {
  int id;
  String title;
  double voteAverage;
  String overview;
  String posterPath;
  String releaseDate;
  String originalLanguage;
  int voteCount;

  Movie(this.id, this.title, this.voteAverage, this.overview, this.posterPath,
      this.releaseDate, this.originalLanguage, this.voteCount);

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.title = parsedJson['title'];
    this.voteAverage = parsedJson['vote_average'] * 1.0;
    this.overview = parsedJson['overview'];
    this.posterPath = parsedJson['poster_path'];
    this.releaseDate = parsedJson['release_date'];
    this.originalLanguage = parsedJson['original_language'];
    this.voteCount = parsedJson['vote_count'];
  }
}
