import 'package:flutter/material.dart';

class LoginAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
      child: Row(
        children: [
          InkWell(
            onTap: (){
             Navigator.pop(context); 
            },
            child: Icon(Icons.arrow_back,
            color: Colors.blue,
            ),
          ),
          
          // Spacer(),
          
          Spacer(),
          Icon(
            Icons.more_vert,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}