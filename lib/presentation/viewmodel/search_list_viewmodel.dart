import 'package:flutter/cupertino.dart';
import 'package:flutter_subway/data/model/subway.dart';
import 'package:flutter_subway/data/repository/subway_repository.dart';

class SearchListVieModel with ChangeNotifier {
  final SubwayRepository _subwayRepository;

  SearchListVieModel({
    required SubwayRepository subwayRepository,
  }) : _subwayRepository = subwayRepository;

  List<Subway> _subways = [];

  List<Subway> get subways => List.unmodifiable(_subways);

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void onSearch(String query) async {
    _isLoading = true;
    notifyListeners();

    _subways = await _subwayRepository.getSubwaysInfo(query);
    _isLoading = false;
    notifyListeners();
  }
}
