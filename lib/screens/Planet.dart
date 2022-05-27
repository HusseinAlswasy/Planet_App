
import 'package:flutter/material.dart';
import 'package:planet_app_ui/components/Details.dart';

import '../constent/constent.dart';
class Planet extends StatelessWidget {
  const Planet(this.image, this.title, this.price, this.press);

  final String image,title;
  final int price;
  final Function press;


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
            width: 140,
            child: Column(
              children: [
                Image.asset(image),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Text("$title",style: TextStyle(fontWeight: FontWeight.bold),),
                        Spacer(),
                        Text("$price\$",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple.withOpacity(0.5)),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
          //   width: 140,
          //   child: Column(
          //     children: [
          //       Image.asset("assets/image_2.png"),
          //       GestureDetector(
          //         onTap: (){},
          //         child: Container(
          //           padding: EdgeInsets.all(10),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.only(
          //               bottomLeft: Radius.circular(10),
          //               bottomRight: Radius.circular(10),
          //             ),
          //             color: Colors.white,
          //             boxShadow: [
          //               BoxShadow(
          //                 offset: Offset(0, 10),
          //                 blurRadius: 50,
          //                 color: kPrimaryColor.withOpacity(0.23),
          //               ),
          //             ],
          //           ),
          //           child: Row(
          //             children: [
          //               Text("Giacinta",style: TextStyle(fontWeight: FontWeight.bold),),
          //               Spacer(),
          //               Text("1900EG",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple.withOpacity(0.5)),),
          //             ],
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
