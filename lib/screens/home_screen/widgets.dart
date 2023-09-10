 import 'package:e_commarcy_ui/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar bulidappbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon:SvgPicture.asset("assets/icons/back.svg") ,onPressed: (){},),
      actions: <Widget>[
       
        IconButton(onPressed: (){},
         icon:SvgPicture.asset("assets/icons/search.svg",color:kTextColor,)),
       IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/cart.svg",color:kTextColor) )
,SizedBox(
  width: kDefaultPaddin,
)
      ],
    );
  }