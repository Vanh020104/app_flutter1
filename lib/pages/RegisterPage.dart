
import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/LoginAppBar.dart';

class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          LoginAppBar(),

          Container(
            height: 900,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            color: const Color.fromARGB(255, 235, 235, 235),
            child: Column(
              children: [
                Text("Register Page", 
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),),
                Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                  child: Container(
                    width: 140, 
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color.fromARGB(255, 92, 174, 240), // Màu viền
                        width: 3.0, // Độ dày của viền
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.person,
                        size: 100,
                        color: const Color.fromARGB(255, 87, 169, 236),
                      ),
                    ),
                  ),
                ),



                Padding(padding: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "User Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),


                Padding(padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Register",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                    ),
                  ),
                  ),
                ),
                
                
              ],
            ),
          
          ),
          
        ],
      ),
    );
  }
}