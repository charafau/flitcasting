import 'package:flitcasting/model/movie.dart';
import 'package:flitcasting/state/movie_state.dart';
import 'package:flitcasting/serializers.dart';
import 'dart:convert';


class AppState implements MovieState {

  @override
  List<Movie> get movies =>
      new List.generate(10,
              (index) => serializers.deserializeWith(Movie.serializer, JSON.decode(_movieJson)));

  final String _movieJson = """
  {"id":"387092623","user_id":"2543157289","title":"初見さまさま！！！","subtitle":"初見さまさま！！！","last_owner_comment":null,"category":"boys_healingvoice_jp","link":"http://twitcasting.tv/leeeaf_","is_live":true,"is_recorded":false,"comment_count":0,"large_thumbnail":"http://202-230-12-93.twitcasting.tv/image3/image.twitcasting.tv/image60_1/8f/90/1712908f-1.jpg","small_thumbnail":"http://202-230-12-92.twitcasting.tv/image3/image.twitcasting.tv/image60_1/8f/90/1712908f-1-s.jpg","country":"jp","duration":8,"created":1500007675,"is_collabo":false,"is_protected":false,"max_view_count":0,"current_view_count":1,"total_view_count":1,"hls_url":"http://twitcasting.tv/leeeaf_/metastream.m3u8/?video=1"}
  """;

}