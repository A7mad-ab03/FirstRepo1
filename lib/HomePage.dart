import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:home_exercises/shortcut.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numper = 1;

  final List<shortimge> imges = [
    shortimge(
      imageurl: 'imges/images-7.jpg',
      name: 'exrcis 1',
    ),
    shortimge(
      imageurl: 'imges/images-5.jpg',
      name: 'exrcis 2',
    ),
    shortimge(
      imageurl: 'imges/images-6.jpg',
      name: 'exrcis 3',
    )
  ];

  final List<TextQQ> text = [
    TextQQ(
      Texts: "Popular",
    ),
    TextQQ(
      Texts: "Hard workout",
    ),
    TextQQ(
      Texts: "Full body",
    ),
    TextQQ(
      Texts: "Crommfit",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'imges/images-2.jpg',
                  ),
                  fit: BoxFit.fill)),
        ),
//mmm 777
        Padding(
          padding: const EdgeInsets.only(top: 79),
          child: Container(
              child: Row(
            children: [
              Text(
                "Hey,",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 32,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: Text(
                  "AHMED DEV",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 32,
                      color: Color.fromARGB(255, 236, 242, 236),
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  numper;
                },
              ),
            ],
          )),
        ),

        // Container(
          
        //   // width: 200, height: 200,
        //   //     color: Colors.red,
        //   margin: EdgeInsets.only(left: 22, bottom: 200, top: 50),
        //   // padding: EdgeInsets.only(top: 00, left: 50, bottom: 700 , ),
        //   child: Row(
        //     children: [
        //       Text(
        //         "Hey,",
        //         style: TextStyle(fontSize: 22, color: Colors.green),
        //         textAlign: TextAlign.center,
        //       ),
        //       Text("Ahmad",
        //           style: TextStyle(fontSize: 22, color: Colors.white)),
        //       Padding(padding: EdgeInsets.only(left: 210)),
        //       CircleAvatar(backgroundImage: AssetImage('imges/images.png')),
        //     ],
        //   ),
        // )

        Center(
          child: Container(
            margin: EdgeInsets.only(bottom: 400, top: 00),
            //  padding: EdgeInsets.only(left: 22),

            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(33)),
            child: Center(
                child: IconButton(
              highlightColor: Color.fromARGB(43, 88, 111, 90),
              onPressed: () {},
              icon: Icon(Icons.play_arrow),
              color: Color.fromARGB(255, 232, 229, 229),
            )),
          ),
        ),

        Container(
          margin: EdgeInsets.only(left: 22, top: 360),
          child: Row(children: [
            Text("Find", style: TextStyle(fontSize: 30, color: Colors.green)),
            Padding(padding: EdgeInsets.only(left: 5)),
            Text("your Workout",
                style: TextStyle(fontSize: 30, color: Colors.white)),
            Padding(padding: EdgeInsets.only(left: 50)),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.filter_alt_outlined)))
          ]),
        ),

        Container(
          margin: EdgeInsets.only(
            top: 430,
            right: 5,
            left: 5,
          ),
          //  color: Colors.green,
          // width: 400,
          // height: 49,
          decoration: BoxDecoration(
              color: Color.fromARGB(211, 108, 94, 94),
              borderRadius: BorderRadius.circular(20)),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'SEARCH WORKOUT',
                hintStyle: TextStyle(color: Colors.white),
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 500),
          child: Container(
            width: double.infinity,
            height: 120,
            child: ListView.builder(
                itemCount: text.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((BuildContext covariant, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        // Container(
                        //   color: Colors.red,
                        //     width: double.infinity,
                        //     height: 170,
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(20),
                        //       color: Color.fromARGB(255, 153, 133, 131),
                        //     )),

                        //  Text("Hard workout", style: TextStyle(fontSize: 20, color: Colors.white)),
                        //   Text("Full body", style: TextStyle(fontSize: 20, color: Colors.white)),
                        //    Text("Crommfit", style: TextStyle(fontSize: 20, color: Colors.white))

                        Text(text[i].Texts,
                            style: TextStyle(fontSize: 20, color: Colors.white))

                        //         , SizedBox(
                        //           width: 10,
                        //         ),
                        //         Container( decoration: BoxDecoration(
                        // color: Color.fromARGB(211, 108, 94, 94),
                        // borderRadius: BorderRadius.circular(7)) , child: Text(text[i].Texts ,style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 229, 228, 228))))
                      ],
                    ),

                    //             Container(
                    //            //   color: Colors.black,
                    //                 height: 170,
                    //               width: 171,
                    //  decoration: BoxDecoration(
                    //  image:
                    //    DecorationImage(
                    //     image:
                    //     AssetImage(imges[i].imageurl)
                    //     )
                    //    )
                    //             ),
                  );
                })),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 530.0),
          child: Row(
            children: [
              Text('Popular Workours',
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontStyle: FontStyle.italic))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 595),
          child: Container(
            width: double.infinity,
            height: 200,
            // color: Colors.orange,

            child: ListView.builder(
                itemCount: imges.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                            //   color: Colors.black,
                            height: 170,
                            width: 171,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(imges[i].imageurl)))),
                        SizedBox(
                          width: 0,
                        ),
                        Text(imges[i].name,
                            style: TextStyle(fontSize: 20, color: Colors.white))
                      ],
                    ),
                  );
                }),
          ),
        )
      ],
    )
        //   ],
        // )

        //. imges/90c2fc870b5c5d33867948e536cc78fb.jpg
        );
  }
}
