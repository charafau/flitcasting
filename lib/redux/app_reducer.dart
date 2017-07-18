import 'package:built_collection/built_collection.dart';
import 'package:flitcasting/model/movie.dart';
import 'package:flitcasting/state/app_state.dart';
import 'package:redux/redux.dart';
import 'package:flitcasting/redux/actions.dart';


class AppReducer extends Reducer<AppState, FlitcastingAction> {


  final _mapper = const <Type, Function>{
    SearchMoviesAction: _fetchMovies,
  };

  @override
  AppState reduce(AppState state, FlitcastingAction action) {
    final reducer = _mapper[action.runtimeType];

    return reducer != null ? _mapper[action.runtimeType](state, action) : state;
  }

}

AppState _fetchMovies(AppState state, SearchMoviesAction action) {
  final movies = action.movieResponseList.movies.map((m) => m.movie);

  final lb = new ListBuilder<Movie>()
    ..addAll(movies);

  return state.rebuild((b) =>
  b
    ..movies = lb);
}