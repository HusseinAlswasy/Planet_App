import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet_app_ui/constent/constent.dart';

class iconCard extends StatelessWidget {
  iconCard(this.image);

  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 30,
            color: kPrimaryColor.withOpacity(0.29),
          ),
        ],
      ),
      child: SvgPicture.asset(image,color: Colors.deepPurple,),
    );
  }
}
