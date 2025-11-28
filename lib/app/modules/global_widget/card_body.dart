import 'package:flutter/material.dart';
class CardBodyFigma extends StatelessWidget {
  const CardBodyFigma({super.key, required this.cateName, required this.cuindex, });
  final String cateName;
  final int cuindex;


  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:EdgeInsets.only(right: 8,left: 48,bottom: 11,top: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: cuindex == 0?Color(0xffeaebea):null
      ),
      child: Padding(
        padding:EdgeInsets.symmetric(vertical: 13,horizontal: 25),
        child: Text(cateName,style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Poppins'),),
      ),
    );
  }
}
