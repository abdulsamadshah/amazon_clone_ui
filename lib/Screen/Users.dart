import 'package:amazon_clone_ui/Contstants/colors.dart';
import 'package:flutter/material.dart';

import '../Contstants/fonts.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

List<String> listimages = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwZCM0S8I51GbO9Ve7XZ1qD46fcZ0x0tSpCg&usqp=CAU',
  'https://www.supercoloring.com/sites/default/files/styles/coloring_medium/public/cif/2022/01/shopping-cart-coloring-page.png',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUQ6URrcrXdEzI61R8hn8r1A6hu9kAbuXlxA&usqp=CAU',
];

List<String> listname = [
  'Check order status andand\ntrack, change or return items',
  'Shop past purchase and\neveryday essesntials',
  'Create lists with items you\nwant, now or later',
];

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Mycolors.primarycolor,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.2),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 10, top: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Amazon.in",
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: Bold,
                                color: Colors.black),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 170),
                            child: Row(
                              children: [
                                Icon(Icons.notifications_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.search),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10, left: 100, top: 5),
                        child: Center(
                            child: Text(
                          "Sign in for best\nexperience",
                          style: TextStyle(
                              fontFamily: Medium,
                              fontSize: 20,
                              color: Colors.black),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                color: Color(0xffD4B94E),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black54,
                        fontFamily: Medium),
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                color: Color(0xffC5C4BE),
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black54,
                        fontFamily: Medium),
                  )),
            ),
          ),
          Container(
            child: Expanded(
              child: ListView.builder(
                  itemCount: listname.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 35),
                        child: Row(
                          children: [
                            SizedBox(
                              child: Image.network(
                                listimages[index].toString(),
                                height: 50,
                                width: 100,
                              ),
                            ),
                            Text(
                              listname[index].toString(),
                              style: TextStyle(
                                  fontFamily: Medium,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
