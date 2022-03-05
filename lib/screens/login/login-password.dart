import 'package:blog_app/screens/login/forget%20password/forgetpassword.dart';
import 'package:blog_app/screens/login/login-email.dart';
import 'package:blog_app/screens/login/login-verify.dart';
import 'package:flutter/material.dart';


class loginPassword extends StatelessWidget {
  const loginPassword({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;


    return Scaffold(
      body: Container(
        child: Padding(
          padding:EdgeInsets.fromLTRB(15, deviceHeight(context) * 0.14, 15, 0),
          child: Column(
           
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginEmail()));},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      child: Icon(Icons.arrow_back_sharp),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    ),
                   
                
                    InkWell(
                      onTap: (){Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ForgetPassword()));},
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      // color: Colors.red,
                      child: Text(
                        "Welcome To Confect!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.4),
                      ),
                    ),
                  ),
                          Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      // color: Colors.red,
                      child: Text(
                        "Enter your password",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.4),
                      ),
                    ),
                  ),
                         Container(child: TextFormField(
  decoration: const InputDecoration(
    border: UnderlineInputBorder(),
    labelText: 'Your password',
  ),
),),
          Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginVerify()));
                          },
                          heroTag: null,
                          label: Text('Continue'), // <-- Text
                          backgroundColor: Colors.red,
                        
                         
                          
                        ),
                      )),
            ])
            
            
                      ),
      ));
  }
}