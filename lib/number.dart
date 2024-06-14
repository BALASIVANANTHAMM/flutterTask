import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageGrid extends StatefulWidget {
  const ImageGrid({super.key});

  @override
  State<ImageGrid> createState() => _ImageGridState();
}

class _ImageGridState extends State<ImageGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
            height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/c.jpg"),
                    fit: BoxFit.fill
                  ),
                border: Border.all()
              ),
              child: Column(
                children: [
                  SizedBox(height: 100,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Container(
                        height: 220,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/a.jpg"),
                            fit: BoxFit.fill,
                          ),
                          border: Border.all()
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 30,),
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/abc.jpg"),
                                  ),
                                  border: Border.all()
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/b.png"),
                                  ),
                                  border: Border.all()
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              SizedBox(width: 30,),
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/c.jpg")),
                                  border: Border.all()
                                ),
                              ),
                              SizedBox(width: 20,),
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/d.jpg")),
                                  border: Border.all()
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 100,),
                  Container(
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/b.png"),
                      ),
                      border: Border.all()
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/e.png"),
                            ),
                            border: Border.all(),
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 60,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              label: Text("Enter Number",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              border: OutlineInputBorder(),
                              icon: Icon(Icons.phone_android),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                        ElevatedButton(onPressed: (){}, child: Text("Login"))
                      ],
                    ),
                  )
                ],
              ),
          ),
    );
  }
}
