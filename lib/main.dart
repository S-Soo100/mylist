import 'package:flutter/material.dart';
import 'package:mylist/src/provider/bottom_navi_provider.dart';
import 'package:mylist/src/provider/wheelchair_provider.dart';
import 'package:mylist/src/ui/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (BuildContext context){return BottomNavigationProvider();}),
          ChangeNotifierProvider(create: (BuildContext context){return WheelchairListProvider();}),
        ],
        child: MyHome(),
      ),
    );
  }
}
