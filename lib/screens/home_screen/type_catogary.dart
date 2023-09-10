import 'package:e_commarcy_ui/constant/constant.dart';
import 'package:e_commarcy_ui/model/product.dart';
import 'package:e_commarcy_ui/screens/home_screen/catogres.dart';
import 'package:e_commarcy_ui/screens/home_screen/list_irem/list_item.dart';
import 'package:flutter/material.dart';

class bodtybe extends StatelessWidget {
  const bodtybe({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Women",style: Theme.of(context).textTheme.headline5?.copyWith(
            fontWeight: FontWeight.bold),),
            
        ),
        SizedBox(
          height: 15,
        ),
        catogares(),
        SizedBox(
          height: 10,
        ),
        listitemcatogres(),
      ],
    );
  }
}
