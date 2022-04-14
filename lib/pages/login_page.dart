import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/route.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext) async {
    {
      if (_formkey.currentState!.validate()) {
        setState(() {
          changebutton = true;
        });
        await Future.delayed(Duration(seconds: 1));
        await Navigator.pushNamed(context, MyRoute.homeRoute);
        setState(() {
          changebutton = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            Image.asset("assets/images/class.png", fit: BoxFit.cover),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
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
                  validator: (value){
                    if (value==null || value.isEmpty) {
                      return "username cannot be empty";
                    }  else {
                      return null;
                    }
                  },
                      
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: ("password"),
                    labelText: ("enter password"),
                  ),
                  validator: (value) {
                    if (value==null || value.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 6) {
                      return "Password length cannot be less than 6";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Material(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                  child: InkWell(
                    splashColor: Color.fromARGB(255, 236, 235, 233),
                    onTap: () => movetohome(BuildContext),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      width: changebutton ? 50 : 150,
                      height: 40,
                      child: changebutton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoute.homeRoute);
                //   },
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(
                //       primary: Colors.red,
                //       backgroundColor: Colors.lightGreen,
                //       minimumSize: Size(130, 40)),
                // )
              ]),
            ),
          ],
        ),
      ),
    ));
  }
}
