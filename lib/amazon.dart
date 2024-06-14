
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';

import 'borderDescription.dart';

class Amazon extends StatefulWidget {
  const Amazon({super.key});

  @override
  State<Amazon> createState() => _AmazonState();
}

class _AmazonState extends State<Amazon> {
  List<String> images = [
    "assets/land.jpg",
    "assets/lan2.jpg",
    "assets/lan3.jpg",
    "assets/lan4.jpg"
  ];
  // int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 68,
        backgroundColor: Color.fromRGBO(44, 229, 214, 2),
        title: TextFormField(
          cursorColor: Colors.teal,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(7)
              ),
              hintText: 'Search Amazon.in',
              prefixIcon: Icon(Icons.search_rounded),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Iconify(Ic.outline_center_focus_strong,color: Colors.grey,size: 30,),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7)
              )
          ),
        ),
      ),
      body: CustomScrollView(
        // scrollDirection: Axis.vertical,
        slivers: [
          SliverList(
          delegate: SliverChildListDelegate([
            Column(
            children: [
                Container(
                  height: 50,
                  color: Color.fromRGBO(127, 247, 237, 2),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 25,),
                      Text('Delivery to User Address Update Location'),
                      SizedBox(width: 20,),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('Bazaar')
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('Mobile')
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('Home')
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('Eletro')
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('miniTv')
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('Fashion')
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('Fresh')
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('Deals')
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('Beauty')
                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/a.jpg'))
                              ),
                            ),
                            Text('Books')
                          ],
                        ),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                ),
              FanCarouselImageSlider(
                sliderHeight: 250,
                imageRadius: 3,
                turns: 0,
                imageFitMode: BoxFit.fitWidth,
                currentItemShadow: [BoxShadow(blurRadius: 0,spreadRadius: 0)],
                slideViewportFraction: 1,
                sliderWidth: double.infinity,
                sidesOpacity: 0,
                imagesLink: images,
                isAssets: false,
              ),

              Container(
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(3,5)

                            )
                          ]
                        ),
                        child: Column(
                          children: [
                            // Image(image: AssetImage('assets/a.jpg')),
                            // Text('data')
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    Container(
                                      height: 62,
                                      width: 62,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(image: AssetImage('assets/e.png')),
                                        borderRadius: BorderRadius.circular(50)
                                      ),
                                    ),
                                    Text('data')
                                  ],
                                ),
                                SizedBox(width: 25,),
                                Column(
                                  children: [
                                    Container(
                                      height: 62,
                                      width: 62,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('assets/e.png')),
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                    ),
                                    Text('data')
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    Container(
                                      height: 62,
                                      width: 62,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('assets/e.png')),
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                    ),
                                    Text('data')
                                  ],
                                ),
                                SizedBox(width: 25,),
                                Column(
                                  children: [
                                    Container(
                                      height: 62,
                                      width: 62,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('assets/e.png')),
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                    ),
                                    Text('data')
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3,5)

                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Text('Keep shopping for'),
                            Image(image: AssetImage('assets/c.jpg')),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3,5)

                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Text('Keep shopping for'),
                            Image(image: AssetImage('assets/c.jpg')),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(3,5)

                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Text('Keep shopping for'),
                            Image(image: AssetImage('assets/c.jpg')),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              Container(
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,

                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8
                    ),
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Description()),
                          );
                        },
                        child: Container(
                          height: 150,
                          width: 100,
                          color: Color.fromRGBO(233, 237, 243, 2),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('assets/lan3.jpg')),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(3)
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text('18% off',
                                        style: TextStyle(
                                          color: Colors.white
                                        ),
                                        ),
                                      )),
                                  SizedBox(width: 8,),
                                  Text('Limited time deal',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold
                                  ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Description()),
                          );
                        },
                        child: Container(
                          height: 150,
                          width: 100,
                          color: Color.fromRGBO(233, 237, 243, 2),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('assets/lan3.jpg')),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text('18% off',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                      )),
                                  SizedBox(width: 8,),
                                  Text('Limited time deal',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Description()),
                          );
                        },
                        child: Container(
                          height: 150,
                          width: 100,
                          color: Color.fromRGBO(233, 237, 243, 2),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('assets/lan3.jpg')),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text('18% off',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                      )),
                                  SizedBox(width: 8,),
                                  Text('Limited time deal',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Description()),
                          );
                        },
                        child: Container(
                          height: 150,
                          width: 100,
                          color: Color.fromRGBO(233, 237, 243, 2),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage('assets/lan3.jpg')),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Container(
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: Text('18% off',
                                          style: TextStyle(
                                              color: Colors.white
                                          ),
                                        ),
                                      )),
                                  SizedBox(width: 8,),
                                  Text('Limited time deal',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    ])
    );
  }
}
