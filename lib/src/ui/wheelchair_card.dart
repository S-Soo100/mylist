
import 'package:flutter/material.dart';
import 'package:mylist/src/model/wheelchair.dart';
import 'package:mylist/src/provider/wheelchair_provider.dart';

Widget wheelchairCard(Wheelchair wheelchair) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(blurRadius: 3),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      // height: 190,
                      child: Text('Text'),
                      // child: Image(
                      //   // image: AssetImage(
                      //   //     '/Users/arthur/toy001/wheelchair_list01/assets/wheelchair_image001.jpeg'),
                      //     image: AssetImage(wheelchair.picture
                      //       // wheelchiarDb.elementAt(id)['picture']
                      //     )),
                      // height: 190,
                    ),
                    flex: 35),
                Expanded(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          cardText(wheelchair),
                        ],
                      )),
                  flex: 45,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      IconButton(
                          onPressed: () {
                            WheelchairListProvider().addFavorite(wheelchair);
                            print("clicked!");
                          },
                          icon: Icon(wheelchair.favorite == true ? Icons.favorite : Icons.favorite_border,
                            color: wheelchair.favorite == true ? Colors.red : Colors.grey[600]),
                      )
                    ],
                  ),
                  flex: 10,
                ),
              ],
            )
          ],
        ),
      ),
      SizedBox(
        height: 6,
      )
    ],
  );
}

Widget cardText(Wheelchair wheelchair) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        wheelchair.title,
        // wheelchiarDb.elementAt(id)['title'].toString(),
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Text('maker : '),
          Text(
            wheelchair.maker,
            // wheelchiarDb.elementAt(id)['maker'].toString()
          ),
        ],
      ), //밸류만 꺼내오는거 어떻게?
      SizedBox(
        height: 3,
      ),
      Row(
        children: [
          Text('price : '),
          Text(
            wheelchair.price.toString(),
            // wheelchiarDb.elementAt(id)['price'].toString()
          ),
        ],
      ),
      SizedBox(
        height: 3,
      ),
      Row(
        children: [
          Text('type : '),
          Text(
            wheelchair.type.toString(),
            // wheelchiarDb.elementAt(id)['type'].toString()
          ),
        ],
      ),
    ],
  );
}

