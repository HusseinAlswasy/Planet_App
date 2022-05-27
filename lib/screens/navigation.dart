import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constent/constent.dart';

class NavigationBar1 extends StatelessWidget {
  const NavigationBar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-10),
            blurRadius: 50,
            color: kPrimaryColor.withOpacity(0.35),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset("icons/flower.svg"),),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("icons/heart-icon.svg"),),
          IconButton(onPressed: (){}, icon: SvgPicture.asset("icons/user-icon.svg"),),
        ],
      ),
    );
  }
}
