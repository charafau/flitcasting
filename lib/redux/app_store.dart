import 'package:flitcasting/redux/app_reducer.dart';
import 'package:flitcasting/state/app_state.dart';
import 'package:redux/redux.dart';

class AppStore extends Store<AppStore, String> {
  AppStore({AppStore initialState, Reducer<AppStore, String> reducer,
  List<Middleware> middlewares: const [

  ]}) : super(reducer ?? new AppReducer(),
  initialState: initialState ?? new AppState());

}

AppStore appStore;