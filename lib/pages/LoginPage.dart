
import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/LoginAppBar.dart';

class LoginPage extends StatelessWidget {

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
                Text("Login Page", 
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),),
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
                Padding(padding: EdgeInsets.only(top: 15),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text("Login",
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
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: InkWell(
                    onTap: () {
                      // Thêm hành động khi nhấn vào nút đăng ký ở đây
                      Navigator.pushNamed(context, '/');
                      print('Register button tapped');
                    },
                    child: Text(
                      'If you have an account, please register!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
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