import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_app_ui/constent/constent.dart';
import 'package:planet_app_ui/screens/iconCard.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.8,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: SvgPicture.asset("icons/back_arrow.svg")),
                        ),
                        Spacer(),
                        iconCard("icons/icon_2.svg"),
                        iconCard("icons/icon_3.svg"),
                        iconCard("icons/icon_4.svg"),
                        iconCard("icons/sun.svg"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 33),
                  child: Container(
                    height: 650,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.29),
                        ),
                      ],
                      image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.cover,
                        image: AssetImage("assets/img.png"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Basilo\n",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.deepPurple)),
                      TextSpan(
                          text: "Russia",
                          style: TextStyle(
                            fontSize: 15,
                            color: kPrimaryColor,
                          ))
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  "1200\$",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                )
              ],
            ),
          ),
          SizedBox(height: 18),
          Row(
            children: [
              SizedBox(
                width:180,
                height: 80,
                child: FlatButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight:Radius.circular(20))),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text("BUY NOW",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                ),
              ),
              SizedBox(width: 35,),
              Text("Describtion",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      ),
    );
  }
}
