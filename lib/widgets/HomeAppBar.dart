import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      title: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Icon(
              Icons.sort,
              size: 30,
            
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Shop",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
            ),
            Spacer(),
            Badge(
              padding: EdgeInsets.all(10),
              
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "cartPage");
                },
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Colors.black,
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}