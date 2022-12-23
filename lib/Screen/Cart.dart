import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Contstants/colors.dart';
import '../Contstants/fonts.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Mycolors.primarycolor,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child:Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: 50,
                width: 320,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey,width: 2),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CupertinoTextField(
                          placeholder: 'Search Amazon.in',
                          placeholderStyle: TextStyle(color: Color(0xff707070)),
                          prefix:Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Icon(Icons.search),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),

                        ),

                      )
                    ],
                  ),
                ),
              ),
            )
        ),
      ),
    );
  }
}
