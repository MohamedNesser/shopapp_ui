import 'package:e_commarcy_ui/constant/constant.dart';
import 'package:e_commarcy_ui/model/product.dart';
import 'package:e_commarcy_ui/screens/home_screen/detales_screen/body_detales.dart';
import 'package:e_commarcy_ui/screens/home_screen/detales_screen/componante/add_to_cart.dart';
import 'package:e_commarcy_ui/screens/home_screen/detales_screen/componante/color_and%20_size.dart';
import 'package:e_commarcy_ui/screens/home_screen/detales_screen/componante/counter_with_fav_btn.dart';
import 'package:e_commarcy_ui/screens/home_screen/detales_screen/componante/description.dart';
import 'package:e_commarcy_ui/screens/home_screen/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class detalesscreen extends StatelessWidget {
  const detalesscreen({Key? key, required this.product}) : super(key: key);
 final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar:AppBar(
      backgroundColor:product.color ,
      elevation: 0,
      leading: IconButton(icon:SvgPicture.asset("assets/icons/back.svg") ,onPressed: (){Navigator.pop(context);},),
      actions: <Widget>[
       
        IconButton(onPressed: (){},
         icon:SvgPicture.asset("assets/icons/search.svg",color:kTextColor,)),
       IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/cart.svg",color:kTextColor) )
,SizedBox(
  width: kDefaultPaddin,
)
      ],
    )
   ,
   body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height:MediaQuery.of(context). size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context). size.height * 0.3),
                    padding: EdgeInsets.only(
                      top:MediaQuery.of(context). size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10,),
                        ColorAndSize(product: product),
                        SizedBox(height: kDefaultPaddin / 2),
                        Description(product: product),
                        SizedBox(height: kDefaultPaddin / 2),
                        CounterWithFavBtn(),
                        SizedBox(height: kDefaultPaddin / 2),
                        AddToCart(product: product)
                      ],
                    ),
                  ),
                  bodydetales(product: product)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}