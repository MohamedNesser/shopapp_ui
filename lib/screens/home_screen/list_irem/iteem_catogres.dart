import 'package:e_commarcy_ui/constant/constant.dart';
import 'package:e_commarcy_ui/model/product.dart';
import 'package:flutter/material.dart';

class itemcatogres extends StatelessWidget {
  const itemcatogres({Key? key, required this.product, required this.press,  }) : super(key: key);
  final Product product;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        return press();
      },
      child: Column(
        children: [
          Expanded(
            child: Container(
              
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin/4),
            child: Text(product.title,style: TextStyle(
              fontSize: 16
              ,color: kTextColor
            ),),
            
          ),
         Text("${product.price}") 
        ],
      ),
    );
  }
}