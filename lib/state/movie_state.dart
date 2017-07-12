import 'package:flitcasting/model/movie.dart';


abstract class MovieState {

  final Iterable<Movie> movies;

  MovieState(this.movies);

}