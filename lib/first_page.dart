import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);
  static const String id = "first_page";

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //late double he,wi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("First Page"),),
      body: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: const Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: ListView(
                      padding: EdgeInsets.only(top: 20),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Text(
                          "Minimal deco",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Baiscs",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Accessory",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Vases",
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 8,
                child: Container(

                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio:0.7 ,
                      children: [
                        _pecture(
                            name: "Black clock",
                            model: "Learm ipsum",
                            price: "\$190",
                            image: "assets/images/image_2.jpg"),
                        _pecture(
                            name: "Black clock",
                            model: "Learm ipsum",
                            price: "\$190",
                            image: "assets/images/image_3.jpg"),
                        _pecture(
                            name: "Black clock",
                            model: "Learm ipsum",
                            price: "\$190",
                            image: "assets/images/image_1.png"),
                        _pecture(
                            name: "Black clock",
                            model: "Learm ipsum",
                            price: "\$190",
                            image: "assets/images/image_4.jpg"),
                      ],
                    )),
              )

            ],
          )),
    );
  }

  Widget _pecture(
      {required String name,
      required String model,
      required String price,
      image}) {
    return  Column(
      children: [
        Container( height: 185,
           width: 180,color: Colors.white,
          padding: EdgeInsets.only(right: 10,bottom: 20),
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage("${image}",),
          ),
        ),
        Text("${name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        Text("${model}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
        Text("${price}",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

      ],
    );
  }
}
