import 'package:flutter/material.dart';
import 'package:anu/dashboard.dart';
import 'package:anu/splash.dart';


void main() {
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(24, 32, 61, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top: 42,bottom: 21),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                child:Padding(
                  padding: EdgeInsets.only(top: 43,bottom: 65),
                  child: Text(
                    "Masukkan username dan password \nuntuk melanjutkan",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height:20),
              Container(
                width: 291,
                height: 49,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(36, 47, 89, 1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 15,
                      color: Colors.white.withOpacity(0.75),
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    prefixIcon: Image.asset(
                      "assets/user.png", // Replace with the path to your image asset
                      width: 10,
                      height: 10,
                    ),
                  ),
                )
              ),
              SizedBox(height:20),
              Container(
                width: 291,
                height: 49,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(36, 47, 89, 1),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 15,
                      color: Colors.white.withOpacity(0.75),
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Image.asset(
                      "assets/lock-closed.png", // Replace with the path to your image asset
                      width: 10,
                      height: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>DashboardPage())
                    );
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(111, 160, 160, 1),
                    minimumSize: Size(178, 41),
                  ),
                ),
              ),
              Container(
                child:Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


