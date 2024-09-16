import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/AccountAppBar.dart';

class Account extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AccountAppBar(),

          Container(
             height: 900,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            color: const Color.fromARGB(255, 235, 235, 235),
            child: Column(
              children: [
               Icon(Icons.person,
               size: 200,
               color: Colors.blue,
               ),
               Padding(padding: EdgeInsets.only(top: 0),
                 child: Text(
                  "Say Hello To Your New App!",
                 style: TextStyle(
                   fontSize: 24,
                  //  fontWeight: FontWeight.bold,
                   color: Colors.blue,
                 ),),
               ),
               Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "You have just saved a week of development and headaches.",
                    textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    
                  ),),
               ),
               Padding(padding: EdgeInsets.all(20),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "loginPage");
                    },
                    child: Text("Log In",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                    ),
                  ),
               ),
               ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 child: SizedBox(
                   width: double.infinity,
                   child: ElevatedButton(
                     onPressed: () {
                       Navigator.pushNamed(context, "registerPage");
                     },
                     child: Text(
                       "Sign Up",
                       style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.black54,
                       ),
                     ),
                     style: ButtonStyle(
                       padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 60, vertical: 10)),
                       shape: MaterialStateProperty.all(RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20),
                       )),
                     ),
                   ),
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