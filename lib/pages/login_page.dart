import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/route.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/class.png", fit: BoxFit.cover),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: ("username"),
                  labelText: ("enter username"),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: ("password"),
                  labelText: ("enter password"),
                ),
                obscureText: true,
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoute.homeRoute);
                },
                child: Text("Login"),
                style: TextButton.styleFrom(
                    primary: Colors.red,
                    backgroundColor: Colors.lightGreen,
                    minimumSize: Size(130, 40)),
              )
            ]),
          ),
        ],
      ),
    ));
  }
}
