import 'package:flutter/material.dart';
import 'package:new_5_dars_n/first_page.dart';
import 'package:new_5_dars_n/login_page.dart';

class HomePage extends StatefulWidget {
  final String? message;

  const HomePage({Key? key, this.message}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool loginMessage = true;

  Future<void> _viewMessage() async {
    Future.delayed(const Duration(seconds: 5));
    setState(() {
      loginMessage = false;
    });
  }

  void _logOut() {
    Navigator.pushReplacementNamed(context, LoginPage.id);
  }

  @override
  void initState() {
    loginMessage = widget.message != null ? true : false;
    super.initState();
    _viewMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 35,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Vase",
                      style: TextStyle(color: Colors.black, fontSize: 140),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Material",
                      style:  TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Porcelain",
                      style:  TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border:  Border(bottom: const BorderSide()),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const Text(
                        "New collection",
                        style:  TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.w500 ),
                      ),
                      IconButton(onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FirstPage()));
                      },
                        icon: const Icon(Icons.arrow_forward_ios_outlined))
                        ],
                      ),
                    ),
                  ],
                ),
              )),
           Expanded(
              child: Image(fit: BoxFit.cover,
                image: AssetImage("assets/images/image_5.jpg"),
              )),
        ],
      ),
    );
  }
}
