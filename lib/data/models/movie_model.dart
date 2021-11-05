import 'package:moviesinfo/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  late double voteAverage;
  final int id;
  late String overview;
  late String releaseDate;
  late bool adult;
  late String backdropPath;
  late List<int> genreIds;
  late int voteCount;
  late String originalLanguage;
  late String originalTitle;
  late String posterPath;
  String title;
  late bool video;
  late double popularity;
  late String mediaType;

  MovieModel({
    voteAverage,
    required this.id,
    overview,
    releaseDate,
    adult,
    backdropPath,
    genreIds,
    voteCount,
    originalLanguage,
    originalTitle,
    posterPath,
    required this.title,
    video,
    popularity,
    mediaType,
  }) : super(
          id: id,
          title: title,
          backdropPath: backdropPath,
          posterPath: posterPath,
          releaseDate: releaseDate,
          voteAverage: voteAverage,
          overview: overview,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      id: json['id'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: json['genre_ids'].cast<int>(),
      voteCount: json['vote_count'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      posterPath: json['poster_path'],
      title: json['title'],
      video: json['video'],
      popularity: json['popularity']?.toDouble() ?? 0.0,
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vote_average'] = this.voteAverage;
    data['id'] = this.id;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['genre_ids'] = this.genreIds;
    data['vote_count'] = this.voteCount;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['title'] = this.title;
    data['video'] = this.video;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
