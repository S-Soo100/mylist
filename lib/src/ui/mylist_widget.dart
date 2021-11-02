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
  initState() {
    //함수가 화면을 rebuild해줘야함 => initState는 build함수 전에 호출
    //=> 잘못하면 화면 build 중에 rebuild요청이 들어감 => Error
    //해결법:
    //  WidgetsBinding.instance
    //     .addPostFrameCallback((_) => yourFunction(context));
    super.initState();
  }

  Widget _makeListView(List<Wheelchair> wheelchairList) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(5),
      itemCount: wheelchairList.length,
      itemBuilder: (BuildContext context, int index) {
        return WheelchairCard(wheelchair: wheelchairList[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // var list = Provider.of<WheelchairListProvider>(context).wheelchairList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Consumer<WheelchairListProvider>(
        builder: (context, provider, widget) {
          return _makeListView(provider.wheelchairList);
        },
      ),
    );
  }
}
