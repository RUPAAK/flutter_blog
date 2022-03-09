import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> options = [
    'UI Design',
    "UX Design",
    "Visual Design",
    ];

     String selectedOption = '';

  List<Widget> getList() {
    List<Widget> childs = [];
    for (var i = 0; i < options.length; i++) {
      childs.add(InkWell(
        onTap: () {
          setState(() {
            selectedOption = options[i];
          });
        },
        child: Container(
          margin: EdgeInsets.only(right: 8.0, bottom: 4.0),
          child: new Chip(
              backgroundColor: Color.fromARGB(255, 215, 240, 217),
              padding: EdgeInsets.symmetric(vertical: 9.0, horizontal: 6.0),
              shape: selectedOption == options[i]
                  ? StadiumBorder(
                      side: BorderSide(width: 0.4),
                    )
                  : StadiumBorder(
                      side: BorderSide(width: 0.1),
                    ),
              label: Text(
                options[i],
                style: TextStyle(fontSize: 15.0),
              )),
        ),
      ));
    }
    return childs;
  }


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
                  padding: const EdgeInsets.only(top: 20,bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(right: 18),
                      child: Container(
                        width:70,
                        height: 70,
                        // color: Colors.red,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4,color: Colors.white),
                        boxShadow:[
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(fit: BoxFit.cover,image:NetworkImage('https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg')) 
                      ),
                        
            
       
                    ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child:ElevatedButton(
                onPressed: () {
                  
                },
                child: Icon(Icons.notifications, color: Colors.white),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Colors.black, // <-- Button color
                  onPrimary: Colors.white, // <-- Splash color
                ),
              ),
                      )
                    ],
                  )),
                  Padding(padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        // color: Colors.red,
                        child: Text(
                          "Explore",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 0.4),
                        ),
                      ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Wrap(
                  children: getList(),
                ),
              ),
                   ),
                   Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                       
                       child: Text('Following',style:TextStyle(color: Colors.white,fontSize: 15,
                           
                            letterSpacing: 0.4),),
                        
            
       
                    ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child:ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.sort, color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.black, // <-- Button color
                                onPrimary: Colors.white, // <-- Splash color
                                ),
                              ),
                      ),
                      
                    ],
                  )),
                  Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width:30,
                        height: 30,
                        // color: Colors.red,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4,color: Colors.white),
                        boxShadow:[
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(fit: BoxFit.cover,image:NetworkImage('https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg')) 
                      ),
                        
            
       
                    ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child:Text('Date:8/18/2021',style: TextStyle(color: Colors.white),)),
                       
                  ]),
            
                ),
                Padding(padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
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
                   ),
                   Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                       
                       child: Text('Why You Need UX In Design?',style:TextStyle(color: Colors.grey,fontSize: 15,
                           
                            letterSpacing: 0.4),),
                        
            
       
                    ),
                      ),
                   
                      
            ]),
            
            ),
         Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                       
                       child: Text('As a founder of UI HUT i discover.....',style:TextStyle(color: Colors.white,fontSize: 16,
                           
                            letterSpacing: 0.4),),
                        
            
       
                    ),
                      ),
                     
            ])),
                       Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                       
                       child: Text('Read Time : 5 min.',style:TextStyle(color: Colors.green,fontSize: 13,
                           
                            letterSpacing: 0.4),),)),
                            Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child:ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.favorite,color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.black, // <-- Button color
                                onPrimary: Colors.white, // <-- Splash color
                                ),
                              ),
                      ),
                    ]),),
                    Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width:30,
                        height: 30,
                        // color: Colors.red,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4,color: Colors.white),
                        boxShadow:[
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(fit: BoxFit.cover,image:NetworkImage('https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg')) 
                      ),
                        
            
       
                    ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child:Text('Date:8/18/2021',style: TextStyle(color: Colors.white),)),
                       
                  ]),
            
                ),
                Padding(padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        // color: Colors.red,
                        child: Text(
                          "Revealing The Uniqueness Of Your Business In Design & Text",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 0.4),
                        ),
                      ),
                   ),
                   Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        child: Text('Why I Need Uniqueness Of Your Business?',style:TextStyle(color: Colors.grey,fontSize: 15,
                        letterSpacing: 0.4),),
                        ),
                      ),
                   ]),
            
            ),
         Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                       
                       child: Text('I just discovered that we all need.....',style:TextStyle(color: Colors.white,fontSize: 16,
                           
                            letterSpacing: 0.4),),
                        
            
       
                    ),
                      ),
                     
            ])),
                       Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                       
                       child: Text('Read Time : 10 min.',style:TextStyle(color: Colors.green,fontSize: 13,
                           
                            letterSpacing: 0.4),),)),
                            Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child:ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.favorite,color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.black, // <-- Button color
                                onPrimary: Colors.white, // <-- Splash color
                                ),
                              ),
                      ),
                    ]),),
                     Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        width:30,
                        height: 30,
                        // color: Colors.red,
                      decoration: BoxDecoration(
                        border: Border.all(width: 4,color: Colors.white),
                        boxShadow:[
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(fit: BoxFit.cover,image:NetworkImage('https://www.filmibeat.com/ph-big/2011/09/1316088442375379.jpg')) 
                      ),
                        
            
       
                    ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child:Text('Date:8/18/2021',style: TextStyle(color: Colors.white),)),
                       
                  ]),
            
                ),
                Padding(padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        // color: Colors.red,
                        child: Text(
                          "How To Make Your Visual Design Better!",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 0.4),
                        ),
                      ),
                   ),
                   Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        child: Text('Why You Need Visual Design?',style:TextStyle(color: Colors.grey,fontSize: 15,
                        letterSpacing: 0.4),),
                        ),
                      ),
                   ]),
            
            ),
         Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                       
                       child: Text('As a visual designer i experience that....',style:TextStyle(color: Colors.white,fontSize: 16,
                           
                            letterSpacing: 0.4),),
                        
            
       
                    ),
                      ),
                     
            ])),
                       Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                       
                       child: Text('Read Time : 7 min.',style:TextStyle(color: Colors.green,fontSize: 13,
                           
                            letterSpacing: 0.4),),)),
                            Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child:ElevatedButton(
                                onPressed: () {},
                                child: Icon(Icons.favorite,color: Colors.white),
                                style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                primary: Colors.black, // <-- Button color
                                onPrimary: Colors.white, // <-- Splash color
                                ),
                              ),
                      ),
                    ]),),

                    ]),
       )));
  }
}