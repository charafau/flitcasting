import 'package:flitcasting/model/movie.dart';
import 'package:flitcasting/state/movie_state.dart';


class AppState implements MovieState {

  @override
  List<Movie> get movies =>
      new List.generate(10,
              (index) => new Movie("movie ${index}"));
}