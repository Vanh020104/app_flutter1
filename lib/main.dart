import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/Account.dart';
import 'package:learn_flutter/pages/CartPage.dart';
import 'package:learn_flutter/pages/ItemPage.dart';
import 'package:learn_flutter/pages/LoginPage.dart';
import 'package:learn_flutter/pages/RegisterPage.dart';
import './pages/HomePage.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        '/': (context) => HomePage(),
        'cartPage': (context) => CartPage(),
        'itemPage': (context) => ItemPage(),
        'loginPage': (context) => LoginPage(),
        'account': (context) => Account(),
        'registerPage': (context) => RegisterPage(),
        
        
      
      },
    );
  }
}