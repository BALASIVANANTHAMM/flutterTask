import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Contain extends StatefulWidget {
  const Contain({super.key});

  @override
  State<Contain> createState() => _ContainState();
}

class _ContainState extends State<Contain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/b.png"),
            fit: BoxFit.fill
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Row(
              children: [
                SizedBox(width: 15,),
                Container(
                  height: 240,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(13.0),
                    color: Colors.grey
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        margin: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(13),topRight: Radius.circular(13)),
                            image: DecorationImage(
                                image: AssetImage("assets/c.jpg"),
                                fit: BoxFit.fill,
                                filterQuality: FilterQuality.low
                            ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Drive",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                      ),
                    ],
                  )
                ),
                SizedBox(width: 20,),
                Container(
                  height: 240,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.grey
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        margin: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(13),topRight: Radius.circular(13)),

                          image: DecorationImage(image: AssetImage("assets/c.jpg"),
                          fit: BoxFit.fill)
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Results",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                    ],
                  )
                ),
      
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 400,
              width: 380,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/c.jpg"),
                fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(2),
                border: Border.all(),
              ),
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
                  blendMode: BlendMode.clear,
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          Container(height: 200,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/a.jpg"),
                            fit: BoxFit.fill,
                            ),
                            border: Border.all()
                          ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("assets/e.png"),
                                        fit: BoxFit.fill
                                      ),
                                      border: Border.all()
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/e.png"),
                                            fit: BoxFit.fill
                                        ),
                                        border: Border.all()
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/e.png"),
                                            fit: BoxFit.fill,
                                        ),
                                        border: Border.all()
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/e.png"),
                                            fit: BoxFit.fill
                                        ),
                                        border: Border.all()
                                    ),
                                  ),
                                ],
                              )
                      
                            ],
                          ),
                        ],
                      ),
                      Form(
                        key: _formData,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 260,
                              child: Padding(
                                padding: const EdgeInsets.all(30),
                                child: TextFormField(
                                  validator: (box){
                                    if(box==null||box.isEmpty){
                                      return 'Box Not to be Empty';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    label: Text("Enter Number",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                    ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    icon: Icon(Icons.phone_android),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                                width: 85,
                                child: ElevatedButton(
                                    onPressed: (){
                                      if(_formData.currentState!.validate()){
                                        Text('Process');
                                      }
                                    },
                                    child: Text("Login")))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}

final _formData = GlobalKey<FormState>();
