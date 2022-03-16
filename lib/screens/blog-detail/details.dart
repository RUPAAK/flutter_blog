import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.black, // <-- Button color
                          onPrimary: Colors.red, // <-- Splash color
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Blog Post',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 0.4),
                                ))
                          ]),
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(Icons.more_horiz, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.black, // <-- Button color
                          onPrimary: Colors.red, // <-- Splash color
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage: NetworkImage(
                                              'https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 10),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Rupak Thapa Magar",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 4.0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: 'Topic : ',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                    children: const <TextSpan>[
                                                      TextSpan(
                                                          text:
                                                              'Why You Need UX In Design?',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .white)),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    // color: Colors.red,
                                    child: Text(
                                      "Why UX Design Is More Important Than UI Design.",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          letterSpacing: 0.4),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Container(
                                      child: Text(
                                        'User experience (UX) design is the process design teams use ti create products that provide meaningful and relevant experinces to users. This involve the design of the entire process of acquiring and interatiing the product, including aspects of branding,design,usuability and function.',
                                        textAlign: TextAlign.left,
                                        maxLines: 7,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            letterSpacing: 0.4),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image(
                                              image: NetworkImage(
                                                  'https://mlnv5mmjwlcg.i.optimole.com/Cdi657k-Ww96y6qY/w:1080/h:628/q:75/https://www.theros.digital/wp-content/uploads/2020/06/ux-designer-web-designer.jpg')))),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          // color: Colors.red,
                                          child: Text(
                                            "User Experiences Design!",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                letterSpacing: 0.4),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Container(
                                      child: Text(
                                        'User experience design is the process designers use to build products that provide great experiences to their users. UX design refers to feelings and emotions users experience when interacting with  a product.',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            letterSpacing: 0.4),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.favorite_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('2.4k')
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.comment_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('140')
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Row(
                                                children: [
                                                  Icon(Icons.share_rounded),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.01,
                                                  ),
                                                  Text('20')
                                                ],
                                              ),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              )),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child:
                                                  Icon(Icons.bookmark_rounded),
                                              style: ElevatedButton.styleFrom(
                                                shape: CircleBorder(),
                                                primary: Colors
                                                    .black, // <-- Button color
                                                onPrimary: Colors.white, //
                                              ))
                                        ]),
                                  )
                                ])
                          ],
                        ),
                      ),
                    ],
                  ))
            ]),
      ),
    ));
  }
}
