import 'package:flutter/material.dart';
import 'package:new_5_dars_n/payment_page.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);
  static const String id ="third_page";
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Page"),),
      body: Center(
        child: MaterialButton(onPressed: (){Navigator.pushNamed(context, PaymentPage.id);},
          color: Colors.blueAccent,
          child: Text("Go Payment page",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
