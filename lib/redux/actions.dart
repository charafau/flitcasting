import 'package:flitcasting/model/movie_response_list.dart';

abstract class FlitcastingAction {
  FlitcastingAction();

  String toString() => '$runtimeType';
}

class SearchMoviesAction extends FlitcastingAction {

  final MovieResponseList movieResponseList;

  SearchMoviesAction(this.movieResponseList);

}