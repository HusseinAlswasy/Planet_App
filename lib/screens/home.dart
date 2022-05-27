import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:planet_app_ui/constent/constent.dart';
import 'package:planet_app_ui/screens/body.dart';
import 'package:planet_app_ui/screens/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: NavigationBar1(),
      );
  }
      AppBar buildAppBar(){
      return AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: SvgPicture.asset("icons/menu.svg"),
          onPressed: () {},
      ),
    );
  }
}
