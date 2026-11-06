import 'package:flutter/material.dart';
import 'package:my_first_app/utiles/routes.dart'; 

class LoginForm extends StatefulWidget{
  @override
  State<LoginForm> createState() => _LoginFormState();
 
}

class _LoginFormState extends State<LoginForm> {

  final _formKey = GlobalKey<FormState>();


  moveToHome(BuildContext context) async {


               if (_formKey.currentState?.validate() ?? false){
                  setState(() {
                    clicked = true;
                  });
                }                
                  await Future.delayed(Duration(seconds: 2));
                  await Navigator.pushNamed(context, Routes.homeRoute);
                  setState(() {
                    clicked = false;
                 
                });
  }

  String _name = "";
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assest/images/login.png" , fit: BoxFit.contain, ),
              Text("welcome $_name" , style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),),
          
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0 , horizontal: 35.0),
                child: Column(
                  children: [
          
                    TextFormField(
                      onChanged: (value) => {
                      _name = value,
                      setState(() => {})
                      },
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return("Username cannot be empty");
                        }
                        else{
                          return null;
                        }
                      },
                    
                  decoration: InputDecoration(
                    hintText: "Enter your username",
                    labelText: "Username"
                  ),
                ),
                
                 TextFormField(

                  onChanged: ((value) => {
                    setState(() {
                      
                    }),
                  }), 

                  obscureText: true,
                  
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    labelText: "Password",
                    
                  ),
                   validator: (value) {
                        if(value == null || value.isEmpty){
                          return("password cannot be empty or must greater then 6 word");
                        }
                        else if(value.length < 5 ){
                          return "password must at least 6 charater";
                        }
                        else{
                          return null;
                        }
                      },
                )
                  ],
                ),
              ),
          
              SizedBox(height: 20),
          
              // ElevatedButton(onPressed: () {
              //   Navigator.pushNamed(context, Routes.homeRoute);
              // } ,
              //  child: Text("Login"),
              //  style: TextButton.styleFrom(
              //   minimumSize: Size(100,50),
              //  ),
              //  )
          
              Material(

                color: Colors.deepPurple,

                borderRadius: BorderRadius.circular(clicked ? 50 : 8),

                child: InkWell(
                  onTap: () => moveToHome(context),
                          
                child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: clicked ? 50 : 100,
                    height: clicked ? 50 : 45,
                    alignment: Alignment.center,
                
                     child: clicked ? Icon(Icons.done , color: Colors.white,) : Text("Login" ,
                
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: clicked ? 15 : 20,
                      fontWeight: FontWeight.bold,
                    ), ),
                
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