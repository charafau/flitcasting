import 'package:flitcasting/model/movie.dart';
import 'package:flitcasting/redux/app_reducer.dart';
import 'package:flitcasting/state/app_state.dart';
import 'package:flitcasting/redux/actions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import 'package:redux/redux.dart';

class AppStore extends Store<AppState, FlitcastingAction> {
  AppStore(AppReducer reducer, {AppState initialState,
    List<Middleware> middlewares: const []})
      : super(reducer ?? new AppReducer(),
      initialState: initialState ?? new AppState());
}

AppStore appStore;

