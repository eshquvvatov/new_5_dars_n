import 'package:flutter/material.dart';
import 'package:new_5_dars_n/home_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);
  static const String id = "payment_page";

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        "Payment Page"
      ),),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, HomePage.id, (route) => false);
          },
          height: 50,
          minWidth: 300,
          color: Colors.grey.shade200,
          child: Text(
            "Payment",
            style: TextStyle(color: Colors.blueAccent, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
