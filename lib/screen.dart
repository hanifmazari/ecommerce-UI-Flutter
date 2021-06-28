// import 'package:ecomui/card.dart';
import 'dart:ui';

import 'package:ecomui/card.dart';
import 'package:flutter/material.dart';
class Screen extends StatefulWidget {

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List products = [
    "Honda Hybrid",
    // "HP15",
    "IPhone SE 2",
    "IPhone X",
    "Kia Car",
    "LG Slide",
    "Mac Book Pro",
    "Mercedes",
    "Oppo A32",
    "Suzuki Viatra",
    // "Vivo V15",
    "Vivo V20"
  ];
  List imgs = [
    "assets/hondaHybrid.jpg",
    // "assets/hp15.jpg",
    "assets/iphoneSE2.jpg",
    "assets/iphoneX.jpg",
    "assets/kia.jpg",
    "assets/lgSlide.jpg",
    "assets/macBookpro.jpg",
    "assets/merce.jpg",
    "assets/oppoA32.jpg",
    "assets/suzukiViatra.jpg",
    // "assets/viviV15.jpg",
    "assets/vivoV20.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child:Text(
                "Item",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextButton(onPressed: () {}, child: Text("See More")))
              ],
            ),
            ListView(
              shrinkWrap: true,
              children: [
                abc(context, "assets/merce.jpg", "Mercedes ")
              ],
            ),
            // ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   shrinkWrap: true,
            //   itemCount: products.length,
            //   itemBuilder: (context,index){
            //     return(
            //       abc(context, imgs[index], products[index])
            //      );
            //   }
            //   ),
              // ListView(
              //   children: [
              //   abc(context, imgs[index], products[index]),            

              //   ],
              // ),
              Text("More Categories", style: TextStyle(fontSize: 20),),
              ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Icon(Icons.add_box),
                      Column(
                        children: [
                          Text("Clothes"),
                          Text("5 Items")
                        ],
                      )
                    ],
                  )
                ],
              )
          ],
        ),
      ),
      
    );
  }
}

Widget abc(var ctx, var img,var name ){
              return Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white70,
                          spreadRadius: 0,
                          offset: Offset(1, 1)
                        )
                      ]
                      ),
                    height: MediaQuery.of(ctx).size.height*0.5,
                    width: MediaQuery.of(ctx).size.width*0.5,
                    child: Column(children: [
                      Container(
                        child: Image.asset(img),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,))),
                      Row(
                        children: [
                          Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Text("5.0 (23 Reviews)", style: TextStyle(fontSize: 12),)                  
                        ],
                      )
                    ],),
                  );

}