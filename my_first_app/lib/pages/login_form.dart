import 'package:flutter/material.dart';
import 'package:my_first_app/utiles/routes.dart'; 

class LoginForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assest/images/login.png" , fit: BoxFit.contain, ),
            Text("-- Login Page --" , style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
        
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 35.0),
              child: Column(
                children: [
                  TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter your username",
                  labelText: "Username"
                ),
              ),
              
               TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your Password",
                  labelText: "Password",
                ),
              )
                ],
              ),
            ),

            SizedBox(height: 20),
        
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, Routes.homeRoute);
            } ,
             child: Text("Login"),
             style: TextButton.styleFrom(
              minimumSize: Size(100,50),
             ),
             )
        
          ],
          
        ),
      ),
    );
  }
}