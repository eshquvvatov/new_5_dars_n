import 'package:flutter/material.dart';
import 'package:new_5_dars_n/third_page.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const String id ="second_page";
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page"),),
      body: Center(
        child: MaterialButton(onPressed: (){Navigator.pushNamed(context, ThirdPage.id);},
          color: Colors.blueAccent,
          child: Text("Go Third Page",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
