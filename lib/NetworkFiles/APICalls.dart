import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ninadsharma_bluestacks_test_project/NetworkFiles/RecommendedDataListModel.dart';

class Call {
  Dio dio = Dio();
  Response? response;

  Future<RecommendedGames> getRecommendedGames() async {
    try {
      response = await dio.get(
          'http://tournaments-dot-game-tv-prod.uc.r.appspot.com/tournament/api/tournaments_list_v2?limit=10&status=all');
    } catch (e) {
      log("ERORR API CALL");
    }
    return RecommendedGames.fromJson(response!.data);
  }

  Future<RecommendedGames> loadMoreRec({cursor}) async {
    try {
      response = await dio.get(
          'http://tournaments-dot-game-tv-prod.uc.r.appspot.com/tournament/api/tournaments_list_v2?limit=10&status=all&cursor=$cursor');
    } catch (e) {
      log("ERORR API CALL");
    }
    return RecommendedGames.fromJson(response!.data);
  }
}
