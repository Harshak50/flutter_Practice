import 'package:flutter/material.dart';
import 'package:practice/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String Name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5.0,
              ),
              Image.asset(
                "assets/images/login_img.png",
                height: 260,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Welcome $Name",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter User Name", labelText: "User Name"),
                      onChanged: (value) {
                        Name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    InkWell(
                      onTap: () async{
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                         Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 45 : 150,
                        height: 44,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text("Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[700],
                            borderRadius:
                                BorderRadius.circular(changeButton ? 45 : 8)),
                      ),
                    ),
                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(150, 40),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
