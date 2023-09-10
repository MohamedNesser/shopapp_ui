
import 'package:e_commarcy_ui/constant/constant.dart';
import 'package:flutter/material.dart';
class catogares extends StatefulWidget {
  catogares({Key? key}) : super(key: key);

  @override
  State<catogares> createState() => _catogaresState();
}

class _catogaresState extends State<catogares> {
  List<String>Catogares=["Hnsd bag","Jewallory","footwear","Dresses"];
  int selectindex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: SizedBox(
        height: 30,
        child: ListView.builder(itemBuilder:(context, index) =>catogress(index),
        scrollDirection: Axis.horizontal,
        itemCount: Catogares.length,
        ),
      ),
    );
  }

  Widget catogress(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectindex= index;
        });
      },
      child: Column(
        children: [
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text( Catogares[index],
            style: TextStyle(
           fontSize: 16,
          fontWeight: FontWeight.bold,
          color: selectindex ==index ?kTextColor:kTextLightColor
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: kDefaultPaddin/4),
            height: 2,
            width: 30,
            color:selectindex ==index? Colors.black:Colors.transparent,
          )
        ],
      ),
    );
  }
}