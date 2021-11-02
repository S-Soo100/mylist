import 'package:flutter/material.dart';
import 'package:mylist/src/model/wheelchair.dart';
import 'package:mylist/src/provider/wheelchair_provider.dart';
import 'package:mylist/src/ui/wheelchair_card.dart';
import 'package:provider/provider.dart';

class FavoriteListWidget extends StatefulWidget {
  FavoriteListWidget({Key? key}) : super(key: key);

  @override
  _FavoriteListWidgetState createState() => _FavoriteListWidgetState();
}

class _FavoriteListWidgetState extends State<FavoriteListWidget> {
  Widget _makeListView(List<Wheelchair> list) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(5),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return WheelchairCard(wheelchair: list[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Consumer<WheelchairListProvider>(
        builder: (context, provider, widget) {
          return _makeListView(provider.favoriteList);
        },
      ),
    );
  }
}
