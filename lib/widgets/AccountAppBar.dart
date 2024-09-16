import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/HomePage.dart';

class AccountAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,
            size: 25,
            color: Colors.black,),
          ),
          
          
        ]),
        
      );
  }
}