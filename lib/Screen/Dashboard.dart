import 'package:amazon_clone_ui/Screen/Cart.dart';
import 'package:amazon_clone_ui/Screen/Home.dart';
import 'package:amazon_clone_ui/Screen/More.dart';
import 'package:amazon_clone_ui/Screen/Users.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int pageindex = 0;
  final page = [Home(), Cart(), Users(), More()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[pageindex],
      bottomNavigationBar:buildmynavbar(BuildContext, context),


    );
  }

  Container buildmynavbar(BuildContext, context) {
    return Container(
      height: 50,
      color: Color(0xffFFFFFF),
      // color: Color(0xffEEEEEE),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {
              setState(() {
                pageindex = 0;
              });
            },
                icon: Icon(Icons.home_outlined)),

            IconButton(onPressed: () {
              setState(() {
                pageindex = 1;
              });
            },
                icon: Icon(Icons.add_shopping_cart_sharp)),

            IconButton(onPressed: () {
              setState(() {
                pageindex = 2;
              });
            },
                icon: Icon(Icons.supervised_user_circle_sharp)),

            IconButton(onPressed: () {
              setState(() {
                pageindex = 3;
              });
            },
                icon: Icon(Icons.more_horiz_sharp)),
          ],
        ),
      ),
    );
  }
}
