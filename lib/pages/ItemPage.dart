import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learn_flutter/widgets/ItemAppBar.dart';
import 'package:learn_flutter/widgets/ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget {
  List<Color> Clrs = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      body: ListView(
        children: [
          ItemAppBar(),

          Padding(
            padding: EdgeInsets.all(15),
            child: Image.asset(
              'assets/images/image1.jpg',
                height: 275),
          ),
         Arc(
          edge: Edge.TOP,
          arcType: ArcType.CONVEX,
          height: 0,
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
             padding: EdgeInsets.symmetric(horizontal: 20),
             child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 20, 
                    bottom: 5
                    ),
                    child: Row(children: [
                      Text(
                        'Product Name',
                      
                        style: TextStyle(
                            color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                     
                    ],
                    ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 20,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (index) {
                       
                      },
                    ),
                    Row(children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Colors.blue.withOpacity(0.5),
                              offset: Offset(0, 5),
                              spreadRadius: 3
                              )
                          ]
                        ),
                        child: Icon(
                         CupertinoIcons.minus,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),


                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "01",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      ),

                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Colors.blue.withOpacity(0.5),
                              offset: Offset(0, 5),
                              spreadRadius: 3
                              )
                          ]
                        ),
                        child: Icon(
                         CupertinoIcons.plus,
                          color: Colors.white,
                          size: 15,
                        ),
                      )
                    ],)
                  ],
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'This is more deatails description of the products 1!',
                    // textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                     
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(children: [
                    Text(
                      "Size: ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: 10,),
                    Row(children: [
                      for (var i = 1; i < 6; i++)
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2
                              ),
                          ],
                        ),
                        child: Text(
                          i.toString(),
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],)
                  ],),
                ),

                //Choose Color product
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(children: [
                    Text(
                      "Colors: ",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(width: 10,),
                    Row(children: [
                      for (var i = 0; i < 5; i++)
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          color: Clrs[i],
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8,
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2
                              ),
                          ],
                        ),
                        // child: Text(
                        //   i.toString(),
                        //   style: TextStyle(
                        //     color: Colors.blue,
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.bold
                        //   ),
                        // ),
                      ),
                    ],)
                  ],),
                ),
             ],
             ),
            ),
          ),
         )
        ],
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}