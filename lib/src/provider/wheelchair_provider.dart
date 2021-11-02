import 'package:flutter/cupertino.dart';
import 'package:mylist/src/model/wheelchair.dart';
import 'package:mylist/src/repository/wheelchair_repository.dart';

class WheelchairListProvider extends ChangeNotifier {
  WheelchairRepository _wheelchairRepository = WheelchairRepository();

  List<Wheelchair> _wheelchairList = [];
  List<Wheelchair> get wheelchairList => _wheelchairList;
  // List<Wheelchair> get favoriteList {
  //   return _wheelchairList.where((item) => item.favorite == true).toList();
  // }

  // List<Wheelchair> favoriteList() {
  //   return _wheelchairList.where((item) => item.favorite == true).toList();
  // }

  List<Wheelchair> get favoriteList =>
      _wheelchairList.where((item) => item.favorite == true).toList();

  void loadWheelchairProviderList() {
    List<Wheelchair> wheelchairList =
        _wheelchairRepository.loadWheelchairList();
    _wheelchairList = wheelchairList;
    // notifyListeners();
  }

  void toggleFavorite(Wheelchair wheelchair) {
    wheelchair.favorite = !wheelchair.favorite;

    // if (wheelchair.favorite == true) {
    //   wheelchair.favorite = false;
    //   // favoriteList.remove(wheelchair);
    // } else {
    //   wheelchair.favorite = true;
    //   // favoriteList.add(wheelchair);
    // }
    notifyListeners();
  }
}
