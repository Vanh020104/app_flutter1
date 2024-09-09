import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/CartAppBar.dart';
import 'package:learn_flutter/widgets/CartBottonNavBar.dart';
import 'package:learn_flutter/widgets/CartItemSample.dart';

class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
      children: [
        CartAppBar(),


        // Cart items
        Container(
          // height: 700,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 237, 237, 237),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(
             children: [
              CartItemSample(),

              Container(
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.circular(10),
                // ),
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Add More Items',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    ),
                  ),
                ],),
              )
             ],
          ),
        ),
      ],
     ),
       bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(150), // Đặt chiều cao mong muốn ở đây
        child: CartBottonNavBar(),
      ),
    );
  }
}