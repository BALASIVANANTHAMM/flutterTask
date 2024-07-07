
import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:http/http.dart' as http;
import 'api/productList.dart';
import 'borderDescription.dart';

class Amazon extends StatefulWidget {
  const Amazon({super.key});

  @override
  State<Amazon> createState() => _AmazonState();
}

class _AmazonState extends State<Amazon> {
  bool isLoad=true;

  @override
  void initState() {
    fetch();
    super.initState();
    
  }

  Future<List<ListApi>> fetch() async {
    var res = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    var data = jsonDecode(res.body);
    setState(() {
      if(data!=null){
        isLoad=false;
      }
    });
    return (data as List).map((e) => ListApi.fromJson(e)).toList();
  }
  List<String> images = [
    "assets/land.jpg",
    "assets/lan2.jpg",
    "assets/lan3.jpg",
    "assets/lan4.jpg"
  ];
  // int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body:
        isLoad==true?
            Center(child: CircularProgressIndicator()):
        FutureBuilder(
          future: fetch(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            List<ListApi> list = snapshot.data!;

            if(!snapshot.hasData){
              return Center(child: CircularProgressIndicator());
            }else if(snapshot.hasError){
              return Center(child: Text('Loading...'));
            }else {
              return CustomScrollView(
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
                                  Text(
                                      'Delivery to User Address Update Location'),
                                  SizedBox(width: 20,),
                                  Icon(Icons.keyboard_arrow_down)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                child: ListView.builder(
                                  itemCount: list.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Description(
                                                        id: list[index].id)));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          list[index].image!))
                                              ),
                                            ),
                                            Text('${list[index].price!
                                                .toString()}.Rs')
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            CarouselSlider.builder(
                                options: CarouselOptions(
                                  viewportFraction: 1,
                                  autoPlay: true,
                                  height: 350
                                ),
                              itemCount: list.length,
                              itemBuilder: (BuildContext context, int index, int realIndex) {
                                  return GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Description(id: list[index].id)));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 320,
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: NetworkImage(list[index].image!))
                                        ),
                                      ),
                                    ),
                                  );
                              },),

                            Container(
                              height: 220,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: ListView.builder(
                                  itemCount: list.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    String cat = list[index].category!;
                                    String c = '${cat[0].toUpperCase()}${cat
                                        .substring(1)}';
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Description(
                                                        id: list[index].id)));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 150,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius
                                                  .circular(8),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 5,
                                                    blurRadius: 5,
                                                    offset: Offset(3, 5)

                                                )
                                              ]
                                          ),
                                          child: Column(
                                            children: [
                                              Text(c),
                                              SizedBox(height: 20,),
                                              Container(
                                                height: 120,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: NetworkImage(
                                                            list[index].image!))
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Container(
                              height: 400,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GridView.builder(
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,

                                      mainAxisSpacing: 8,
                                      crossAxisSpacing: 8
                                  ),
                                  itemCount: list.length,
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    return GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Description(
                                                id: list[index].id!,)),
                                        );
                                      },
                                      child: Container(
                                        height: 150,
                                        width: 100,
                                        color: Color.fromRGBO(233, 237, 243, 2),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(
                                                  8.0),
                                              child: Container(
                                                height: 120,
                                                width: 90,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: NetworkImage(
                                                            list[index].image!))
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              children: [
                                                SizedBox(width: 10,),
                                                Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius: BorderRadius
                                                            .circular(3)
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .all(2),
                                                      child: Text(
                                                        list[index].price!
                                                            .toString(),
                                                        style: TextStyle(
                                                            color: Colors.white
                                                        ),
                                                      ),
                                                    )),
                                                SizedBox(width: 8,),
                                                Text(list[index].category!
                                                    .toString(),
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.red,
                                                      fontWeight: FontWeight
                                                          .bold
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ]);
            }
          },)
      ),
    );
  }
}
