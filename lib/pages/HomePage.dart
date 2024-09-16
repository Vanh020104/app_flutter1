import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/Account.dart';
import 'package:learn_flutter/pages/CartPage.dart';
import 'package:learn_flutter/pages/LoginPage.dart';
import 'package:learn_flutter/widgets/CategoriesWidget.dart';
import 'package:learn_flutter/widgets/HomeAppBar.dart';
import 'package:learn_flutter/widgets/ItemWidget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(children: [
        HomeAppBar(),
        Container(
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 237, 237, 237),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Column(children: [

            // Search bar

            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search hesre...",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 30,
                  color: Color(0xFF4C53A5),
                  ),
                
              ],),
            ),
            
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15), 
                child: Image(
                  image: AssetImage('assets/banner/slider.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Categories title
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),

            // Categories
            Categorieswidget(),


            // body items
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: Text(
                  'Popular Items',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),


              //Item widget
              ItemWidget(),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '<',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                      SizedBox(width: 5), 
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 5), 
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                      SizedBox(width: 5), 
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '>',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

          ],
          ),
          
        )
      ],
     ),


      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          // Handle button tap
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
              break;
          }
        },
        height: 60,
        color: const Color.fromARGB(255, 223, 223, 223),
        items: [
          Icon(Icons.home, size: 30, color: Colors.blue),
          Icon(Icons.shopping_bag, size: 30, color: Colors.blue),
          Icon(Icons.person, size: 30, color: Colors.blue),
          Icon(Icons.list, size: 30, color: Colors.blue),
        ],
      ),
    );
  }
}