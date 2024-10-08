import 'package:flutter/material.dart';
import 'package:learn_flutter/models/Product.dart';

class ItemWidget extends StatelessWidget {
  final List<Product> products;

  ItemWidget({required this.products});


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.59,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: products.map((product) {
        return Container(
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
                      color: Color(0xFF4C53A5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-50%",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.network(
                    product.images.isNotEmpty 
                      ? (product.images[0].startsWith('http') ? product.images[0] : 'http://10.0.2.2:8080/api/v1/product-images/imagesPost/'+ product.images[0]) 
                      : 'http://10.0.2.2:8080/api/v1/product-images/imagesPost/57180634-081f-49b9-b693-c7adfb0a32bd.jpg', // Kiểm tra nếu danh sách images không rỗng và URL hợp lệ
                    height: 110,
                    width: 110,
                  ),
                ),
              ),
              Expanded( // Thêm Expanded để tránh tràn
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        product.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        product.description,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        maxLines: 2, // Giới hạn số dòng để tránh tràn
                        overflow: TextOverflow.ellipsis, // Thêm dấu ba chấm nếu tràn
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${product.price}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                          Icon(
                            Icons.add_shopping_cart,
                            color: Color(0xFF4C53A5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}