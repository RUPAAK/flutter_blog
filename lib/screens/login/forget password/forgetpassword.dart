import 'package:blog_app/screens/login/login-email.dart';
import 'package:blog_app/screens/login/login-password.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({ Key? key }) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  bool _isObscure = true;

  Widget build(BuildContext context) {
   double deviceHeight(BuildContext context) =>
        MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Padding(padding:EdgeInsets.fromLTRB(15, deviceHeight(context) * 0.14, 15, 0),
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
                    onPressed: () { Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => loginPassword()));},
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(Icons.arrow_back_sharp),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  )
                 ] ),
              ),
             Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      // color: Colors.red,
                      child: Text(
                        "Reset Password",
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
                        "Enter your username or email address",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.4),
                      ),
                    ),
                  ),
                      Padding(
        padding:  const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: TextField(
            obscureText: _isObscure,
            decoration: InputDecoration(
                labelText: 'New Password',
                suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });}))))),
                       Padding(
        padding:  const EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: TextField(
            obscureText: _isObscure,
            decoration: InputDecoration(
                labelText:  'Confirm Password',
                suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });}))))),
         
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: FloatingActionButton.extended(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => loginPassword()));
                          },
                          heroTag: null,
                          label: Text('Continue'), // <-- Text
                          backgroundColor: Colors.red,
                        
                         
                          
                        ),
                      )),
          ])
          ),
          
         ) )
    );
  }
}