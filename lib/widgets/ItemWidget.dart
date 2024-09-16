import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.count(
        childAspectRatio: 0.59,
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(), // Ngăn GridView cuộn riêng
        children: [
          for (var i = 1; i < 7; i++)
            Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "-50%",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'itemPage');
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/image$i.jpg',
                        width: 130,
                        height: 130,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Product 1",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Description of product 1",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$53",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        Icon(
                          Icons.add_shopping_cart,
                          size: 25,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}