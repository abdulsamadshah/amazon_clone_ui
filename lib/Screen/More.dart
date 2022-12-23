import 'package:amazon_clone_ui/Contstants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Contstants/fonts.dart';

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {

  List<String> categoryimage=[
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4mPN3uj0uzyIkvNsKoDaIhJGriZGNvZ6gmw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYMUXyMjPnrnXFPDEezcPGNyiQ08vLhp-pqg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfH0MowBPnHM_UqEcc6c5WzknRpEDq8BFbOg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIylOZmhmCckFewoth515vFwA8W23oBm5N3Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIwOjzMfn3HNh-cg3HtOjFB_Uk_8XOsAdp0Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiOvCLVbVt0m6Pxy_iAwz5C2Xme3t-uMMw7Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZAtvEUCOiaZ7cyM-5YCm9VB-_BdUxG6uUyw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkM-C_Kg3MxSycfzTGXrcxsLKA311g9Sd5YQ&usqp=CAU',
  ];
  List<String> categoryname=[
    'Prime',
    'Deals and Saving',
    'Mobile & Electronic Device',
    'Fashion & Beauty',
    'Groceries & Pet\nSupplies',
    'Health & Personal\nCare',
    'Home Furniture & Appliances',
    'Music video and Gamin',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors.primarycolor,
      appBar: AppBar(
        backgroundColor: Mycolors.primarycolor,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: SizedBox(
                height: 50,
                width: 325,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CupertinoTextField(
                          placeholder: 'Search Amazon.in',
                          placeholderStyle: TextStyle(color: Color(0xff707070)),
                          prefix: Padding(
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
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 10),
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 105,
                  width: 345,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 10),
                              child: Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.amberAccent,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Pay",
                                        style: TextStyle(
                                            fontFamily: Regular, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Text('Amazon Pay'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 10),
                              child: Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      color: Colors.amberAccent,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Mini Tv",
                                        style: TextStyle(
                                            fontFamily: Regular, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                  Text('Amazon Mini Tv'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                child: Expanded(
                  child: GridView.builder(
                      itemCount: categoryname.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                  ), itemBuilder: (context, index){
                    return Card(
                      child: Container(
                        height: MediaQuery.of(context).size.height * .18,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            // color: Mycolors.primarycolor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Image(
                                  // fit: BoxFit.fitWidth,
                                  // width: double.infinity,
                                  image:NetworkImage(categoryimage[index],),height: 130,width: 100,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Text(categoryname[index],style: TextStyle(fontFamily: Regular),),
                              ),
                            )
                          ],
                        ),

                      ),

                    );
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
