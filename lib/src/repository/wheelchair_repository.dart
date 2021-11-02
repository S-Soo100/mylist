import 'package:mylist/src/model/wheelchair.dart';

class WheelchairRepository {
  List wheelchairDb = [
    {
      'id': 0,
      'title': 'Ottobock M1',
      'maker': 'Ottobock',
      'price': 500000,
      'type': 'normal',
      'favorite': true, //불리언으로 어떻게 집어넣죠?!
      'picture':
      '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image001.jpeg'
    },
    {
      'id': 1,
      'title': 'Ottobock Avantgarde',
      'maker': 'Ottobock',
      'price': 5000000,
      'type': 'fordable',
      'favorite': true, //불리언으로 어떻게 집어넣죠?!
      'picture':
      '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image002.jpeg'
    },
    {
      'id': 2,
      'title': 'Ottobock Motus',
      'maker': 'Ottobock',
      'price': 5000000,
      'type': 'rigid',
      'favorite': false, //불리언으로 어떻게 집어넣죠?!
      'picture':
      '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image003.jpeg'
    },
    {
      'id': 3,
      'title': 'Ottobock Zenit',
      'maker': 'Ottobock',
      'price': 4500000,
      'type': 'rigid',
      'favorite': false,
      'picture':
      '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image004.png'
    },
    {
      'id': 4,
      'title': '휠라인 제니스 X1',
      'maker': 'WheelLIne',
      'price': 1900000,
      'type': 'fordable',
      'favorite': false,
      'picture': '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image005.png'
    },
    {
      'id': 5,
      'title': '휠라인 제니스 X3',
      'maker': 'WheelLIne',
      'price': 1500000,
      'type': 'fordable',
      'favorite': false,
      'picture': '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image006.png'
    },
    {
      'id': 6,
      'title': 'OX SR',
      'maker': 'OX',
      'price': 4200000,
      'type': 'fordable',
      'favorite': false,
      'picture': '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image007.png'
    },
    {
      'id': 7,
      'title': 'OX SX',
      'maker': 'OX',
      'price': 3850000,
      'type': 'fordable',
      'favorite': false,
      'picture': '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image008.png'
    },
    {
      'id': 8,
      'title': 'Ti-Lite TRA',
      'maker': 'Ti-Lite',
      'price': 4400000,
      'type': 'rigid',
      'favorite': false,
      'picture': '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image009.png'
    },
    {
      'id': 9,
      'title': 'TIG Cloight',
      'maker': 'Tig',
      'price': 4500000,
      'type': 'fordable',
      'favorite': false,
      'picture': '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image010.png'
    },
    {
      'id': 10,
      'title': 'Miki Mirage 7',
      'maker': 'Miki',
      'price': 480000,
      'type': 'fordable',
      'favorite': false,
      'picture': '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image011.png'
    },
    {
      'id': 11,
      'title': 'Miki U2 A',
      'maker': 'Miki',
      'price': 1300000,
      'type': 'fordable',
      'favorite': false,
      'picture': '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image012.png'
    },
  ];

  List<Wheelchair> loadWheelchairList() {
    return wheelchairDb.map((e) => Wheelchair.fromJson(e)).toList();
  }
}