import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff3277D8)),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset('taxi_res.jpg'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text('Welcome Aboard!', style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              Text('Signup with iCab in simple steps',style: TextStyle(fontSize: 16,color: Colors.black),),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 80, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Container(
                      width: 50,
                      child: Icon(Icons.people),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
              ),
              TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    prefixIcon: Container(
                      width: 50,
                      child: Icon(Icons.people),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Container(
                        width: 50,
                        child: Icon(Icons.phone),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      ),
                    ),
                  ),
                ),
                TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Container(
                      width: 50,
                      child: Icon(Icons.email),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Container(
                        width: 50,
                        child: Icon(Icons.password),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white,width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
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
                  text: 'Alredy a User?',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Login now',
                      style: TextStyle(fontSize: 16, color: Colors.blue)
                    )
                  ]
                )),
            )
            ],
          ),
        ),
      ),
    );
  }

}