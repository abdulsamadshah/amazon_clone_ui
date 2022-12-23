import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../Contstants/colors.dart';

import '../Contstants/fonts.dart';
import '../Utils/CarouselWithDotsPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static final List<String> imgList = [
    'https://previews.123rf.com/images/visible3dscience/visible3dscience1611/visible3dscience161100161/67542756-cute-baby-with-big-sale-sign.jpg',
    'https://www.shutterstock.com/image-vector/baby-goods-sale-banner-special-260nw-1118890226.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjKkwaeLPRwQuJgnx08bex5DBQZZdJB9Ms0Q&usqp=CAU',
  ];

  List<String> categoryname = [
    'Mobile',
    'Fashion',
    'Deal',
    'Fresh',
    'Mini Tv',
    'Beauty',
  ];
  List<String> categoryimage = [
    'https://rukminim1.flixcart.com/image/312/312/l4n2oi80/mobile/r/6/t/-original-imagfhu6dcpdnqkh.jpeg?q=70',
    'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/31BhivN7nbL._AC_UL320_.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/01/marketing/todays-deals/v2/todaysdeals-IN._V327705617_FMpng_SY80_.png',
    'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/71x9onReBAL._AC_UL320_.jpg',
    'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/61f1sKQ7FiL._AC_UY218_.jpg',
    'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/81W9kVfSCcL._AC_UL320_.jpg',
    'https://m.media-amazon.com/images/W/WEBP_402378-T2/images/I/71O7+VmlvVL._AC_UL320_.jpg',
  ];

  String clothing =
      'https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Q2xvdGhpbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60';
  String Footwear =
      'https://images.unsplash.com/photo-1588361861040-ac9b1018f6d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Rm9vdHdlYXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60';
  String Watches =
      'https://images.unsplash.com/photo-1585123334904-845d60e97b29?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8V2F0Y2hlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60';
  String Grooming =
      'https://plus.unsplash.com/premium_photo-1664544673685-566eafbe98de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8R3Jvb21pbmd8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60';

  String yogacontrol =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY1nDtInRL7oO1Wq7OtusWL5h29AV5BWvDwA&usqp=CAU';
  String Clothdryracks =
      'https://rukminim1.flixcart.com/image/612/612/xif0q/cloth-dryer-stand/y/v/h/35-ms100-tnc-original-imaggcg8rypn6qee.jpeg?q=70';
  String PesControl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCSabxIalPN6TGN1UwZHMEzknmMjXqX73lbg&usqp=CAU';
  String Irons =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5GcVI4o-w-P-RHeTudGvJQtSkE9UWr3BRDA&usqp=CAU';

  //card ui

  List<String> topealsimage = [
    'https://rukminim1.flixcart.com/image/612/612/khp664w0-0/mobile-holder/h/z/x/20135-holdup-original-imafxngxbmnzu7hn.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/612/612/kn6cxow0/mobile-holder/x/9/n/xii-21-lazy-mobile-phone-stand-vibex-original-imagfwjazbacg89s.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/612/612/kst9gnk0/cases-covers/bumper-case/o/7/w/bgt-bg5-huemic-original-imag6aygpgypyahp.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/612/612/xif0q/mobile-holder/w/u/e/stand-phone-holder-bracket-mount-clamp-camera-stand-clamp-mobile-original-imagg6ds38zfb83g.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/612/612/jex4yvk0/mobile-holder/y/4/g/mobile-holder-attachment-for-selfie-stick-and-mobile-tripods-original-imaeatvzk6xegant.jpeg?q=70',
  ];

  List<String> topdealsname = [
    'Hold up 20135 Mobile Holder',
    'RHONNIUM ® XII-21 Lazy Mobile Phone Stand Mobile Holder',
    'huemic Bumper Case for Back Case Cover, Redmi Note 10 P...',
    'SOJUBA Phone Holder Bracket Mount Clamp Camera Stand cl..',
    'Techlife Solutions Mobile Holder Attachment For Selfie ...',
  ];

  List<String> discounts = [
    'Up to 84% off',
    'Up to 50% off',
    'Up to 30% off',
    'Up to 10% off',
    'Up to 67% off',
  ];

  List<String> dealsoftheday = [
    'Deals of the\nDay',
    'Deals of the\nDay',
    'Deals of the\nDay',
    'Deals of the\nDay',
    'Deals of the\nDay',
  ];

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        // color: Color(0xffEEEEEE),
        child: Column(
          children: [
            Container(
              color: Color(0xffFFFFFF),
              height: 120,
              //error showing you can use gridview and list then use Flex widget this is resolve error to ui
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: categoryname.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              children: [
                                SizedBox(
                                  child: Image.network(
                                    categoryimage[index].toString(),
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      categoryname[index].toString(),
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: Regular),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
              thickness: 1,
              color: Colors.grey,
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SizedBox(child: CarouselWithDotsPage(imgList: imgList)),
              ),
            ),
            Divider(
              height: 2,
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 25, top: 5),
                child: Text(
                  'Under 499 | ekhnic wear for men',
                  style: TextStyle(fontSize: 20, fontFamily: Regular),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Container(
                height: 180,
                // color: Colors.deepPurpleAccent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Container(
                        height: 200,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  //145,200
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * .17,
                                  placeholder: "images/amazon.png",
                                  image: clothing),
                            ),
                            Text(
                              "Clothing",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: Regular),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Container(
                        height: 200,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  //145,200
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * .17,
                                  placeholder: "images/amazon.png",
                                  image: Footwear),
                            ),
                            Text(
                              "Footwear",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: Regular),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
              child: Container(
                height: 180,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Container(
                        height: 200,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  //145,200
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * .17,
                                  placeholder: "images/amazon.png",
                                  image: Watches),
                            ),
                            Text(
                              "Watches",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: Regular),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Container(
                        height: 200,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  //145,200
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * .17,
                                  placeholder: "images/amazon.png",
                                  image: Grooming),
                            ),
                            Text(
                              "Grooming",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: Regular),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 5, vertical: 5),
                    //   child: Container(
                    //     child: Column(
                    //       children: [
                    //         Card(
                    //           // decoration: BoxDecoration(
                    //           //   border: Border.all(
                    //           //     color: Color(0xFFF05A22),
                    //           //     style: BorderStyle.solid,
                    //           //     width: 1.0,
                    //           //   ),
                    //           //   color: Colors.transparent,
                    //           //   borderRadius: BorderRadius.circular(30.0),
                    //           //
                    //           // ),
                    //           child: FadeInImage.assetNetwork(
                    //               fit: BoxFit.cover,
                    //               //145,200
                    //               width:
                    //               MediaQuery.of(context).size.width * 1,
                    //               height: MediaQuery.of(context).size.height *
                    //                   .17,
                    //               placeholder: "images/amazon.png",
                    //               image: Watches),
                    //         ),
                    //         Text(
                    //           "Watches",
                    //           style: TextStyle(
                    //               fontSize: 20, fontFamily: Regular),
                    //         ),
                    //
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 5, vertical: 5),
                    //   child: Container(
                    //     child: Column(
                    //       children: [
                    //         Card(
                    //           child: FadeInImage.assetNetwork(
                    //               fit: BoxFit.cover,
                    //               //145,200
                    //               width:
                    //               MediaQuery.of(context).size.width * 1,
                    //               height: MediaQuery.of(context).size.height *
                    //                   .17,
                    //               placeholder: "images/amazon.png",
                    //               image: Grooming),
                    //         ),
                    //         Text(
                    //           "Grooming",
                    //           style: TextStyle(
                    //               fontSize: 20, fontFamily: Regular),
                    //         ),
                    //
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    // Container(
                    //   height: 500,
                    //
                    //   //error showing you can use gridview and list then use Flex widget this is resolve error to ui
                    //   child: Flex(
                    //     direction: Axis.vertical,
                    //     children: [
                    //        Expanded(
                    //         child: GridView.builder(
                    //             itemCount: wearcategoryname.length,
                    //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //               crossAxisCount: 2,
                    //               mainAxisSpacing: 10,),
                    //             itemBuilder: (context, index) {
                    //               return Padding(
                    //                 padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    //                 child: Container(
                    //                   child: Column(
                    //                     children: [
                    //                       Card(
                    //                         // decoration: BoxDecoration(
                    //                         //   border: Border.all(
                    //                         //     color: Color(0xFFF05A22),
                    //                         //     style: BorderStyle.solid,
                    //                         //     width: 1.0,
                    //                         //   ),
                    //                         //   color: Colors.transparent,
                    //                         //   borderRadius: BorderRadius.circular(30.0),
                    //                         //
                    //                         // ),
                    //                         child: FadeInImage.assetNetwork(
                    //
                    //                             fit: BoxFit.cover,
                    //                             //145,200
                    //                             width:
                    //                             MediaQuery.of(context).size.width *
                    //                                 1,
                    //                             height:
                    //                             MediaQuery.of(context).size.height *
                    //                                 .17,
                    //                             placeholder:
                    //                             "images/amazon.png",
                    //                             image: wearcategoryimage[index].toString()),
                    //                       ),
                    //                       Text(
                    //                         wearcategoryname[index].toString(),
                    //                         style:
                    //                         TextStyle(fontSize: 20, fontFamily: Regular),
                    //                       )
                    //                     ],
                    //                   ),
                    //                 ),
                    //               );
                    //             }),
                    //       ),
                    //     ],
                    //
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Divider(
                height: 2,
                thickness: 3,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(left: 0, right: 100, top: 5),
                child: Text(
                  'Home kitchen and more',
                  style: TextStyle(fontSize: 20, fontFamily: Regular),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
              child: Container(
                height: 200,
                // color: Colors.deepPurpleAccent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Container(
                        height: 200,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  //145,200
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * .17,
                                  placeholder: "images/amazon.png",
                                  image: yogacontrol),
                            ),
                            Text(
                              "Strarting 199\nYoga control",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: Regular),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Container(
                        height: 200,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  //145,200
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * .17,
                                  placeholder: "images/amazon.png",
                                  image: Clothdryracks),
                            ),
                            Text(
                              "Cloth dry racks",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: Regular),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
              child: Container(
                height: 180,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Container(
                        height: 200,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  //145,200
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * .17,
                                  placeholder: "images/amazon.png",
                                  image: PesControl),
                            ),
                            Text(
                              "Pes Control",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: Regular),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 5),
                      child: Container(
                        height: 200,
                        width: 160,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              child: FadeInImage.assetNetwork(
                                  fit: BoxFit.cover,
                                  //145,200
                                  width: MediaQuery.of(context).size.width * 1,
                                  height:
                                      MediaQuery.of(context).size.height * .17,
                                  placeholder: "images/amazon.png",
                                  image: Irons),
                            ),
                            Text(
                              "Irons",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: Regular),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 5, vertical: 5),
                    //   child: Container(
                    //     child: Column(
                    //       children: [
                    //         Card(
                    //           // decoration: BoxDecoration(
                    //           //   border: Border.all(
                    //           //     color: Color(0xFFF05A22),
                    //           //     style: BorderStyle.solid,
                    //           //     width: 1.0,
                    //           //   ),
                    //           //   color: Colors.transparent,
                    //           //   borderRadius: BorderRadius.circular(30.0),
                    //           //
                    //           // ),
                    //           child: FadeInImage.assetNetwork(
                    //               fit: BoxFit.cover,
                    //               //145,200
                    //               width:
                    //               MediaQuery.of(context).size.width * 1,
                    //               height: MediaQuery.of(context).size.height *
                    //                   .17,
                    //               placeholder: "images/amazon.png",
                    //               image: Watches),
                    //         ),
                    //         Text(
                    //           "Watches",
                    //           style: TextStyle(
                    //               fontSize: 20, fontFamily: Regular),
                    //         ),
                    //
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 5, vertical: 5),
                    //   child: Container(
                    //     child: Column(
                    //       children: [
                    //         Card(
                    //           child: FadeInImage.assetNetwork(
                    //               fit: BoxFit.cover,
                    //               //145,200
                    //               width:
                    //               MediaQuery.of(context).size.width * 1,
                    //               height: MediaQuery.of(context).size.height *
                    //                   .17,
                    //               placeholder: "images/amazon.png",
                    //               image: Grooming),
                    //         ),
                    //         Text(
                    //           "Grooming",
                    //           style: TextStyle(
                    //               fontSize: 20, fontFamily: Regular),
                    //         ),
                    //
                    //       ],
                    //     ),
                    //   ),
                    // ),

                    // Container(
                    //   height: 500,
                    //
                    //   //error showing you can use gridview and list then use Flex widget this is resolve error to ui
                    //   child: Flex(
                    //     direction: Axis.vertical,
                    //     children: [
                    //        Expanded(
                    //         child: GridView.builder(
                    //             itemCount: wearcategoryname.length,
                    //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //               crossAxisCount: 2,
                    //               mainAxisSpacing: 10,),
                    //             itemBuilder: (context, index) {
                    //               return Padding(
                    //                 padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    //                 child: Container(
                    //                   child: Column(
                    //                     children: [
                    //                       Card(
                    //                         // decoration: BoxDecoration(
                    //                         //   border: Border.all(
                    //                         //     color: Color(0xFFF05A22),
                    //                         //     style: BorderStyle.solid,
                    //                         //     width: 1.0,
                    //                         //   ),
                    //                         //   color: Colors.transparent,
                    //                         //   borderRadius: BorderRadius.circular(30.0),
                    //                         //
                    //                         // ),
                    //                         child: FadeInImage.assetNetwork(
                    //
                    //                             fit: BoxFit.cover,
                    //                             //145,200
                    //                             width:
                    //                             MediaQuery.of(context).size.width *
                    //                                 1,
                    //                             height:
                    //                             MediaQuery.of(context).size.height *
                    //                                 .17,
                    //                             placeholder:
                    //                             "images/amazon.png",
                    //                             image: wearcategoryimage[index].toString()),
                    //                       ),
                    //                       Text(
                    //                         wearcategoryname[index].toString(),
                    //                         style:
                    //                         TextStyle(fontSize: 20, fontFamily: Regular),
                    //                       )
                    //                     ],
                    //                   ),
                    //                 ),
                    //               );
                    //             }),
                    //       ),
                    //     ],
                    //
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Container(
              height: 340,
              color: Colors.grey,
              child: Column(
                children: [
                  SizedBox(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 0, right: 50, top: 10),
                      child: Text(
                        'Top deals on mobile accessories',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: Regular,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // SizedBox(width: 20,height: 10,),
                  Container(
                    child: Expanded(
                      child: ListView.builder(
                          itemCount: topdealsname.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 5, top: 10),
                              child: Container(
                                width: 180,
                                child: Column(
                                  children: [
                                    Card(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: SizedBox(
                                              height: 80,
                                              width: 100,
                                              child: Image.network(
                                                topealsimage[index].toString(),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 50, left: 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 70,
                                                  // color:Colors.red,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3.0),
                                                    color: Colors.red,
                                                  ),

                                                  child: TextButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        discounts[index]
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontSize: 9,
                                                            color:
                                                                Colors.white),
                                                      )),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  child: Text(
                                                    dealsoftheday[index]
                                                        .toString(),
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 10,
                                                        fontFamily: Bold),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 40, left: 10, top: 10),
                                            child: Text(
                                                topdealsname[index].toString()),
                                          ),
                                        ],
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
            )
          ],
        ),
      ),
    );
  }
}
