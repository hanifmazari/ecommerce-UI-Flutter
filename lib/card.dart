// import 'package:ecomui/home.dart';
import 'package:ecomui/home.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  List products = [
    "Honda Hybrid",
    "HP15",
    "IPhone SE 2",
    "IPhone X",
    "Kia Car",
    "LG Slide",
    "Mac Book Pro",
    "Mercedes",
    "Oppo A32",
    "Suzuki Viatra",
    "Vivo V15",
    "Vivo V20"
  ];
  List imgs = [
    "assets/hondaHybrid.jpg",
    "assets/hp15.jpg",
    "assets/iphoneSE2.jpg",
    "assets/iphoneX.jpg",
    "assets/kia.jpg",
    "assets/lgSlide.jpg",
    "assets/macBookpro.jpg",
    "assets/merce.jpg",
    "assets/oppoA32.jpg",
    "assets/suzukiViatra.jpg",
    "assets/viviV15.jpg",
    "assets/vivoV20.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
      mainAxisSize: MainAxisSize.min,
      
      children: [
          Flexible(flex: 1, child: upper()),
          Flexible(
      
            flex: 1,
            // fit: FlexFit.loose,
            child: ListView.builder(
              
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return (Column(
                    children: [
                      Flexible(
                                    // fit: FlexFit.loose,

                        flex: 2,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1,
                          child: imgCard(
                              products[index], "5.0(43 Review)", imgs[index], context),
                        ),
                      ),
                    ],
                  ));
                }),
          ),
          Flexible(
                        // fit: FlexFit.loose,

            flex: 2,
            child: GridView.count(
              // physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: List.generate(products.length, (index) {
                return AspectRatio(
                  aspectRatio:0.5,
                  child: Align(
                    
                    child: imgCard(products[index], "5.0(43 Review)", imgs[index], context)));
              }),
            ),
          )
      ],
    ),
        ));
  }
}

Widget imgCard(var name, var review, var img, var ct) {
  return SizedBox(
    // height: 240,
    child: (Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // height: 200,
            child: Ink.image(
              image: AssetImage(img),
              height: MediaQuery.of(ct).size.height*.5,
              // height: 150,
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
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
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Text(
                      review,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    )),
  );
}
