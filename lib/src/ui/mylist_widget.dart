import 'package:flutter/material.dart';
import 'package:mylist/src/model/wheelchair.dart';
import 'package:mylist/src/provider/wheelchair_provider.dart';
import 'package:mylist/src/ui/wheelchair_card.dart';
import 'package:provider/provider.dart';

class MyListWidget extends StatefulWidget {
  MyListWidget({Key? key}) : super(key: key);

  @override
  _MyListWidgetState createState() => _MyListWidgetState();

}

class _MyListWidgetState extends State<MyListWidget> {
  // late WheelchairListProvider _wheelchairListProvider;
  @override
  void initState(){
    super.initState();
    Provider.of<WheelchairListProvider>(context, listen: false).loadWheelchairProviderList();
  }

  Widget _makeListView(List<Wheelchair> wheelchairList){
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(5),
      itemCount: wheelchairList.length,
      itemBuilder: (BuildContext context, int index){
        return wheelchairCard(wheelchairList[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // _wheelchairListProvider = Provider.of<WheelchairListProvider>(context, listen: false);


    return Scaffold(
      appBar: AppBar(title: const Text('Home'),),
      body: Consumer<WheelchairListProvider>(
        builder: (context, provider, widget){
          return _makeListView(provider.wheelchairList);
        },
      ),
    );
  }
}
