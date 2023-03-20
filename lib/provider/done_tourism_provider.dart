import 'package:flutter/foundation.dart';
import 'package:percobaan2/model/tourism_place.dart';

class DoneTourismProvider extends ChangeNotifier{
  final List<TourismPlace> _doneTourismPlaceList = [];

  List<TourismPlace> get doneTourismPlaceList => _doneTourismPlaceList;

  void commplate(TourismPlace place, bool isDone){
    isDone
      ? _doneTourismPlaceList.add(place)
        : _doneTourismPlaceList.remove(place);
    notifyListeners();
  }
}