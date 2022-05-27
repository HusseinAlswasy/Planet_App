import 'package:flutter/material.dart';

class Feature extends StatelessWidget {
   Feature(this.image,this.press);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ()=> press,
      child: Container(
        margin: EdgeInsets.only(top: 10,bottom: 10),
        width:size.width*.6,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
