import 'dart:async';
import 'dart:convert';
import 'package:flitcasting/model/accesstoken.dart';
import 'package:http/http.dart' as http;
import 'package:flitcasting/model/movie.dart';
import 'package:flitcasting/model/movie_response_list.dart';
import 'package:flitcasting/serializers.dart';


final String _baseUrl = "https://apiv2.twitcasting.tv/";

class MovieService {

  final AccessToken accessToken;

  MovieService(this.accessToken);

  Future<MovieResponseList> fetchMovies() async {
    final response = await http.get(
        "${_baseUrl}/search/lives?limit=10&type=new&lang=ja", headers: _getHeaders(accessToken));

    final MovieResponseList movieResponseList = serializers.deserializeWith(MovieResponseList.serializer, JSON.decode(response.body));


    return movieResponseList;
  }

  Map<String, String> _getHeaders(AccessToken token) {
    return {
      "X-Api-Version": "2.0",
      "Authorization": "Bearer ${token.access_token}"
    };
  }
}

