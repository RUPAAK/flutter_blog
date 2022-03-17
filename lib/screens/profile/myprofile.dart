import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({ Key? key }) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
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
                    
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.black, // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text('Blog Post',style: TextStyle(color: Colors.white, fontSize: 18,
                                      letterSpacing: 0.4),))
                 ] ),
              ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: ElevatedButton(
                    onPressed: () {
                    
                    },
                    child: Icon(Icons.more_horiz, color: Colors.white),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.black, // <-- Button color
                      onPrimary: Colors.red, // <-- Splash color
                    ),
                  ),
                  )
                ],
              )),
               Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14.0),
                               child:
                               Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
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
                                                  radius: 40,
                                                 
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
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        "23k",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                     
                                                      
                                                    ],
                                                  ),
                                                  
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            text: 'Followers ',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                            
                                                        ),
                                                      )),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: RichText(
                                                          text: TextSpan(
                                                            text: 'Following ',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey),
                                                            
                                                        ),
                                                      )),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            )
                                          ]),
                            ),]))]))]))));
      
  }
}