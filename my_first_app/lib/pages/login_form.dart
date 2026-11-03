import 'package:flutter/material.dart'; 

class LoginForm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
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
          )

          ElevatedButton(onPressed: () {
              
          }
          
          , child: Text("Login"))

        ],
        
      ),
    );
  }
}