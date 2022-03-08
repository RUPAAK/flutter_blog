import 'package:blog_app/homepage.dart';
import 'package:blog_app/screens/subcription/subscriptions.dart';
import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
      double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
          body: Container(
            
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0,bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 ElevatedButton(
                    onPressed: () {},
                   
                    
                    child: Icon(Icons.arrow_back_sharp,color: Colors.white,),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Colors.blue, // <-- Button color
                      onPrimary: Colors.red,
                  ))
                 ] ),
              ),
             Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      // color: Colors.red,
                      child: Text(
                        "Start Your Profile",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.4),
                      ),
                    ),
                  ),
                         Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 50),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        // color: Colors.red,
                        child: Text(
                          "This is how you're displayed in community",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.4),
                        ),
                      ),
                    ),
                  ),
                      Padding(padding: const EdgeInsets.only(top: 20.0,bottom: 50),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18),
                      child: Container(
                        width:90,
                        height: 90,
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
                    ),
                  
                   Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => profile()));
                      },
                      heroTag: null,
                      label: Text('Continue'), // <-- Text
                      backgroundColor: Colors.red,
                    ),
                  ),
                ),
          ])
          ),
          
         ) 
    );
  }
}