import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        SizedBox(
          height: 20.0,
        ),
        Image.asset("assets/images/login_img.png",height: 270,),
        SizedBox(
          height: 5.0,
        ),
        Text("Welcome",style: TextStyle(
          fontSize: 24,
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal:32.0 ),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter User Name",
                  labelText:"User Name" 
                ),
              ),
               TextFormField(
                 obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText:"Password" 
                ),
              ),
              SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          child: Text("Login"),
          style: TextButton.styleFrom(),
          onPressed: (){
            print("Hi Harsha");
          },
        ),

            ],
          ),
        )

      ],)
    );
  }
}