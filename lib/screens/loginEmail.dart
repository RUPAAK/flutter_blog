import 'package:flutter/material.dart';


class loginEmail extends StatelessWidget {
  const loginEmail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(Icons.arrow_back_sharp),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  )
                 ] ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                               "Welcome To Confect",style: TextStyle(fontSize: 30),
                             ),
                            ),    
                          ),
                       ],)],)),
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                               "Enter your username or email address",style: TextStyle(fontSize: 15),
                             ),
                            ),    
                          ),
                       ],)],)),
                       SizedBox(height: 10,),
                      Container(child: TextFormField(
  decoration: const InputDecoration(
    border: UnderlineInputBorder(),
    labelText: 'Username or Email',
  ),
),),Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Container(child:
                 ElevatedButton(
                    onPressed: () {},
                   
                    child: Align(alignment: Alignment.center,child:Text('Continue'),)
,                    style: ElevatedButton.styleFrom(
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )),
                  ))
                 ] ),
              ),
          ])
          ),
          
         ) )
    );
  }
}