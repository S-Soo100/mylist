import 'package:flutter/cupertino.dart';
import 'package:mylist/src/model/wheelchair.dart';
import 'package:mylist/src/repository/wheelchair_repository.dart';

class WheelchairListProvider extends ChangeNotifier{
  WheelchairRepository _wheelchairRepository = WheelchairRepository();

  List<Wheelchair> _wheelchairList = [];
  List<Wheelchair> _favoriteList = [];
  List<Wheelchair> get wheelchairList => _wheelchairList;
  List<Wheelchair> get favoriteList {
    return _wheelchairList.where((item) => item.favorite == true).toList();
  }

  void loadWheelchairProviderList() {
    List<Wheelchair> wheelchairList =
        _wheelchairRepository.loadWheelchairList();
    _wheelchairList = wheelchairList;
    notifyListeners();
  }

  void addFavorite(Wheelchair wheelchair) {
    final notMyFavorite = wheelchair.favorite == false;
    if (notMyFavorite) {
      wheelchair.favorite == false;
      // favoriteList.remove(wheelchair);
    } else {
      wheelchair.favorite == true;
      // favoriteList.add(wheelchair);
    }
    notifyListeners();
  }
//
//   void favoriteSaved(Wheelchair item){
//     if(favoriteList.contains(item)){
//       print('already contained');
//     }else{
//       favoriteList.add(item);};
//     notifyListeners();
//   }
//
//   void favoriteRemoved(Wheelchair item){
//     if(favoriteList.contains(item)){
//       favoriteList.remove(item);}
//     notifyListeners();
//   }
}
