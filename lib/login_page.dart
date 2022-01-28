import 'package:flutter/material.dart';
import 'package:new_5_dars_n/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _openHomePage() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 80,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Username: ",style: TextStyle(fontSize: 25),),
                  Text("Ravshanbek",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Password: ",style: TextStyle(fontSize: 25),),
                Text("********",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
              ],),
              SizedBox(height: 100,),
              MaterialButton(onPressed:_openHomePage,
              shape: StadiumBorder(),
                height: 50,
                minWidth: 250,
                color: Colors.blue,
                child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              SizedBox(height: 15,),
              Text("Reset password ",style: TextStyle(fontSize: 18,color: Colors.grey.shade600),)
            ],
          ),
        ),
      ),
    );
  }
}
