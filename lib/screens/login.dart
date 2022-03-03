import 'package:flutter/material.dart';

import '../common/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
      
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
                    child: Logo(fontHeight: 60,),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  )
                 ] ),
              ),
              Padding(padding: EdgeInsets.all(20),child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                               "We Are Preparing Something Great For You!",style: TextStyle(fontSize: 15),
                             ),
                            ),    
                          ),
                       ],)],)),
                SizedBox(height: 25,),
                 Padding(padding: EdgeInsets.all(20),child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Column(
                        children: <Widget>[
                          Align(alignment:Alignment.center,child: Container(
                  child:FloatingActionButton.extended(
  label: Text('Continue with Apple'), // <-- Text
  backgroundColor: Colors.black,
  icon: Icon( // <-- Icon
    Icons.apple,
    size: 24.0,
  ),
  onPressed: () {},
),
                ),),
                        
                          
                       ],)],)),
                      
                 Padding(padding: EdgeInsets.all(20),child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Column(
                        children: <Widget>[
                          Container(
                            child:  FloatingActionButton.extended(
  label: Text('Continue with Google'), // <-- Text
  backgroundColor: Colors.blue,
  icon: Icon( // <-- Icon
    Icons.g_mobiledata,
    size: 24.0,
  ),
  onPressed: () {},
),
                ),
                          
                       ],)],)),
                       
                 Padding(padding: EdgeInsets.all(20),child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Column(
                        children: <Widget>[
                          Container(
                            
               child: FloatingActionButton.extended(
  label: Text('Continue with Email'), // <-- T
  backgroundColor: Colors.red,
  icon: Icon( // <-- Icon
    Icons.mail,
    size: 24.0,
  ),
  onPressed: () {},
),
                  
                ),
                         
                       ],)],)), 
                       Container(child: Row(
                         children: [
                          Align(alignment: Alignment.center,child: Text('Already have account?'),),
                                             ],
                       ))
              ]
              
          )
        ),
      

      ),
      
     ) );
  }
}
