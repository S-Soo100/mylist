import 'package:flutter/material.dart';
import 'package:mylist/src/provider/bottom_navi_provider.dart';
import 'package:mylist/src/provider/wheelchair_provider.dart';
import 'package:provider/provider.dart';
import 'favoritlist_widget.dart';
import 'mylist_widget.dart';

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late BottomNavigationProvider _bottomNavigationProvider;

  @override
  void initState() {
    Provider.of<WheelchairListProvider>(context, listen: false)
        .loadWheelchairProviderList();
    super.initState();
  }

  Widget _navigationBody() {
    switch (_bottomNavigationProvider.currentpage) {
      case 0:
        return MyListWidget();
      case 1:
        return FavoriteListWidget();
    }
    return Container();
  }

  Widget _bottomNavigationBarWidget() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        backgroundColor: Colors.grey[350],
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: Colors.grey[800],
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.grey[800],
              ),
              label: 'Favorite')
        ],
        currentIndex: _bottomNavigationProvider.currentpage,
        selectedItemColor: Colors.blueAccent,
        onTap: (index) {
          _bottomNavigationProvider.updateCurrentPage(index);
        });
  }

  @override
  Widget build(BuildContext context) {
    _bottomNavigationProvider = Provider.of<BottomNavigationProvider>(context);
    return Scaffold(
      body: _navigationBody(),
      bottomNavigationBar: _bottomNavigationBarWidget(),
    );
  }
}
