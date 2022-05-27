import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planet_app_ui/components/Details.dart';
import 'package:planet_app_ui/constent/constent.dart';
import 'package:planet_app_ui/screens/Planet.dart';
import 'package:planet_app_ui/screens/Search.dart';
import 'package:planet_app_ui/screens/featurePalnet.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 145,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 50,
                        ),
                        height: 130,
                        decoration: const BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Welcome',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            Spacer(),
                            Image.asset("assets/logo.png"),
                          ],
                        ),
                      ),
                      const Search(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            Text(
                              "Products",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              left: 0,
                              child: Container(
                                margin: EdgeInsets.only(right: 5),
                                height: 7,
                                color: kPrimaryColor.withOpacity(0.2),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.deepPurple,
                        onPressed: () {},
                        child: Text(
                          "More",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Planet("assets/image_1.png", "Basilo", 1200, ()=>   Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()))),
                  Planet("assets/image_2.png", "Bmsilo", 1900, ()=>   Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()))),
                  Planet("assets/image_3.png", "hasilo", 2000,()=>   Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()))),
                ],
              ),
            ),
            Container(
              margin:
              EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: Row(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        const Text(
                          "Featured Planets",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          left: 0,
                          child: Container(
                            margin: EdgeInsets.only(right: 5),
                            height: 7,
                            color: kPrimaryColor.withOpacity(0.2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.deepPurple,
                    onPressed: () {},
                    child: Text(
                      "More",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    Feature("assets/11.jpg", (){}),
                    Feature("assets/12.jpg", (){}),
                    Feature("assets/bottom_img_2.png", (){}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
