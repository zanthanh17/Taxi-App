

import 'package:app_taxi/src/resource/register_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 140,
              ),
              Image.asset('vinfast.png'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text('Welcom Back!', style: TextStyle(fontSize: 22,color: Colors.black, fontWeight: FontWeight.bold,)),
              ),
              Text('Login to continue using iCab', style: TextStyle(fontSize: 18, color: Colors.black),),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 145, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Container(
                      width: 50,
                      child: Icon(Icons.email)
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    )
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 16, color: Colors.black),
                obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Container(
                      width: 50,
                      child: Icon(Icons.phone)
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    )
                  ),
              ),
              Container(
                // constraints: BoxConstraints.loose(Size(double.infinity,30)),
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text('Forgot Password?', style: TextStyle(color: Colors.blue, fontSize: 16),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                    ),
                    onPressed: (){}, 
                    child: Text('Log In',style: TextStyle(fontSize: 18),)
                    ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: RichText(
                  text: TextSpan(
                    text: 'New user?', 
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => RegisterPage()
                              ));
                        },
                        text: 'Sign up for a new account',
                        style: TextStyle(fontSize: 16, color: Colors.blue)
                      )
                    ]
                    ),
                  ),
              )         
            ],
          ),
        ),
      ),

    );
  }
}