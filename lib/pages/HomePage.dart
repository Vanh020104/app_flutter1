import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/Account.dart';
import 'package:learn_flutter/pages/CartPage.dart';
import 'package:learn_flutter/services/ProductService.dart';
import 'package:learn_flutter/widgets/CategoriesWidget.dart';
import 'package:learn_flutter/widgets/HomeAppBar.dart';
import 'package:learn_flutter/widgets/ItemWidget.dart';
import 'package:learn_flutter/models/Product.dart';

class HomePage extends StatelessWidget {
  final ProductService productService = ProductService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
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
                _buildSearchBar(),
                _buildBanner(),
                _buildCategoriesTitle(),
                Categorieswidget(),
                _buildPopularItemsTitle(),
                _buildItemWidget(),
                _buildPagination(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 300,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search here...",
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
        ],
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
          image: AssetImage('assets/banner/slider.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildCategoriesTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Text(
        'Categories',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildPopularItemsTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Text(
        'Popular Items',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildItemWidget() {
    return FutureBuilder<List<Product>>(
      future: productService.fetchProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Failed to load products'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No products available'));
        } else {
          return ItemWidget(products: snapshot.data!);
        }
      },
    );
  }

  Widget _buildPagination() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildPaginationButton('<', Colors.blue, Colors.white),
          SizedBox(width: 5),
          _buildPaginationButton('1', Colors.blue, Colors.white),
          SizedBox(width: 5),
          _buildPaginationButton('2', Colors.white, Colors.black),
          SizedBox(width: 5),
          _buildPaginationButton('>', Colors.blue, Colors.white),
        ],
      ),
    );
  }

  Widget _buildPaginationButton(String text, Color bgColor, Color textColor) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: textColor,
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return CurvedNavigationBar(
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
    );
  }
}