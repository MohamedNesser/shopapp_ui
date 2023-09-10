import 'package:e_commarcy_ui/constant/constant.dart';
import 'package:e_commarcy_ui/model/product.dart';
import 'package:e_commarcy_ui/screens/home_screen/detales_screen/detales_screen.dart';
import 'package:e_commarcy_ui/screens/home_screen/list_irem/iteem_catogres.dart';
import 'package:flutter/material.dart';

class listitemcatogres extends StatelessWidget {
  const listitemcatogres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
     Padding(
       padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
       child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        mainAxisSpacing: kDefaultPaddin,
        crossAxisSpacing: kDefaultPaddin,
        childAspectRatio: .75),
        itemBuilder: (context, index) => itemcatogres( 
          product: products[index],
          press:()=>Navigator.push(
            context,MaterialPageRoute(
              builder:(context) =>detalesscreen(
                product:products[index]
              )
              
              )
              ),

        ),
        itemCount: products.length,
        
        
        ),
     ));
  }
}