import 'package:flutter/material.dart';
import 'package:news_app/seevice/apiController.dart';
import 'package:news_app/seevice/newsModel.dart';

class ProviderPage extends ChangeNotifier {
  late List<NewsModel> _list = [];
  List<NewsModel> get list => _list;
  late List<NewsModel> _breakingNewsList = [];
  List<NewsModel> get breakingNewsList => _breakingNewsList;

  void addlist() async {
    try {
      ApiController apiController = ApiController();
      _list = await apiController.getAllNews();
    } catch (e) {
      throw e.toString();
    }

    notifyListeners();
  }

  void addBreakingNewsList() async {
    try {
      ApiController apiController = ApiController();
      _breakingNewsList = await apiController.getHeadLineData();
    } catch (e) {
      throw e.toString();
    }
    notifyListeners();
  }
}
