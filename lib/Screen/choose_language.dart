import 'package:flutter/material.dart';

class ChooseLanuage extends StatefulWidget {
  const ChooseLanuage({Key? key}) : super(key: key);

  @override
  State<ChooseLanuage> createState() => _ChooseLanuageState();
}

class _ChooseLanuageState extends State<ChooseLanuage> {
  List<String> languaename = [
    'English',
    'Frisian',
    'Latvian',
    'Arabic',
    'GUJARATI',
    'Bhojpuri',
    'Tamil',
    'Danish',
  ];

  List<int> colors = [
    0xffCAE2E2,
    0xffF2E8A8,
    0xffC7F3CA,
    0xffBAC1EE,
    0xffE2CAE0,
    0xffEDA8F2,
    0xffE2D4CA,
    0xffA8E8F2,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text(
              "Choose your language",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            )),

            //gridview.builder error aa raha then expanded wrap
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: languaename.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 0),
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                  // color: Color(0xfffffcff),
                                  color: Color(colors[index]),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Center(
                                  child: Text(languaename[index].toString())),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
