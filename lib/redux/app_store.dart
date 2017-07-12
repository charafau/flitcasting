import 'package:flitcasting/redux/app_reducer.dart';
import 'package:flitcasting/state/app_state.dart';
import 'package:redux/redux.dart';

class AppStore extends Store<AppState, String> {
  AppStore(AppReducer reducer, {AppState initialState,
    List<Middleware> middlewares: const []})
      : super(reducer ?? new AppReducer(),
      initialState: initialState ?? new AppState());
}

AppStore appStore;