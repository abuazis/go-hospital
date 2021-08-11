import 'package:flutter/material.dart';
import 'package:heaven_canceller_hospital/models/news.dart';
import 'package:heaven_canceller_hospital/services/news_service.dart';

///* Class Provider News
/// Class untuk menghandle state data berita kesehatan 

class NewsProvider extends ChangeNotifier {
  List<News> _news;

  List<News> get news => _news;

  /// Memuat data berita dari news service firebase
  void loadResource() async {
    _news = await NewsService.getResource();

    notifyListeners();
  }
}