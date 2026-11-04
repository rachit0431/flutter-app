import 'package:flutter/material.dart';
import 'package:my_first_app/utiles/routes.dart';

class HomePage extends StatelessWidget{
  int number = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
        child: Center(
          child:Column(
          children: [
            Container(
               child: Text("hy i am only $number  boyfriend of sanidhya Gupta"),
            ),
           SizedBox(height: 20),

             ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.loginRoute);
              },
              child: Text("Go to Login"),
            ),
          ],
          
        ),
        ),
      );
  }
}