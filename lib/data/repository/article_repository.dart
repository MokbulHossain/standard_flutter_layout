import 'package:standardflutterstructure/data/model/api_result_model.dart';
import 'package:standardflutterstructure/res/strings/strings.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:standardflutterstructure/data/repository/api_methods.dart';

abstract class ArticleRepository {
  Future<List<Articles>> getArticles();
}

class ArticleRepositoryImpl implements ArticleRepository {

  @override
  Future<List<Articles>> getArticles() async {

   var response = await ApiMethods.GetData(AppStrings.cricArticleUrl);
   //for http..
   // var response = await http.get(AppStrings.cricArticleUrl);
    if (response.statusCode == 200) {
      //for http..
      //var data = json.decode(response.body);
      var data = response.data;
      List<Articles> articles = ApiResultModel.fromJson(data).articles;
      return articles;
    } else {
      print('error');
      throw Exception();
    }
  }

}