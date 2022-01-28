
import 'package:flutter/material.dart';
import 'package:new_5_dars_n/first_page.dart';
import 'package:new_5_dars_n/fourth_page.dart';
import 'package:new_5_dars_n/home_page.dart';
import 'package:new_5_dars_n/login_page.dart';
import 'package:new_5_dars_n/payment_page.dart';
import 'package:new_5_dars_n/second_page.dart';
import 'package:new_5_dars_n/third_page.dart';

void main(){
  runApp(const MyHomeWork());
}

class MyHomeWork extends StatelessWidget {
  const MyHomeWork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
      title: "Shop App",
      home: LoginPage(),
      routes: {
        FirstPage.id:(context)=>FirstPage(),
        SecondPage.id:(context)=>SecondPage(),
        ThirdPage.id:(context)=>ThirdPage(),
        FourthPage.id:(context)=>FourthPage(),
        HomePage.id:(context)=>HomePage(),
        LoginPage.id:(context)=>LoginPage(),
        PaymentPage.id:(context)=>PaymentPage()

      },
    );
  }
}
