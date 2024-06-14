import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:ionicons/ionicons.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  String dropDownValue = "1";
  List<String> items = [
    "1","2","3","4","5"
  ];
  List<String> images = [
    "assets/land.jpg",
    "assets/lan2.jpg",
    "assets/lan3.jpg",
    "assets/lan4.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 68,
        backgroundColor: Color.fromRGBO(44, 229, 214, 2),
        leading: GestureDetector(
            // onTap: (){
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => const Amazon()),
            //   );
            // },
            child: const Icon(Ionicons.arrow_back_outline)
        ),
        title: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search Amazon.in',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search_rounded,color: Colors.black,size: 30,),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Iconify(Ic.outline_center_focus_strong,color: Colors.grey,size: 30,),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.grey)
            )
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 3.0)]
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Container(height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage('assets/a.jpg')
                        )
                      ),
                      ),
                      Column(
                        children: [
                          Text('TIMEWEAR',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                          Text('   Visit the Store',style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                      SizedBox(width: 90,),
                      Iconify(MaterialSymbols.star_rate_rounded,color: Colors.orange,),
                      Iconify(MaterialSymbols.star_rate_rounded,color: Colors.orange,),
                      Iconify(MaterialSymbols.star_rate_rounded,color: Colors.orange,),
                      Iconify(MaterialSymbols.star_rate_half_rounded,color: Colors.orange,),
                      Iconify(MaterialSymbols.star_rate_outline_rounded,color: Colors.orange,),
                      Text('120')
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Text('TIMEWEAR Analog New Track Day Date Functioning'),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      Text('Leather Strap Watch for Men'),
                    ],
                  ),
                  Stack(
                    children:[
                      FanCarouselImageSlider(
                        imagesLink: images,
                        isAssets: false,
                      sliderHeight: 650,
                      imageRadius: 0,
                      turns: 0,
                      slideViewportFraction: 1,
                      sidesOpacity: 0,
                      sideItemsShadow: [BoxShadow(blurRadius: 0.1,spreadRadius: 0.1)],
                      currentItemShadow: [BoxShadow(blurRadius: 0.1,spreadRadius: 0.1)],
                      autoPlay: false,
                    ),
                      Positioned(
                        top: 30,
                        right: 20,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white,
                            boxShadow: [BoxShadow(blurRadius: 2.0)]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Iconify(Ph.share_network_light),
                          ) ,
                        ),
                      ),
                      Positioned(
                        bottom: 50,
                        left: 20,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              boxShadow: [BoxShadow(blurRadius: 2.0)]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Iconify(Mdi.heart_outline),
                          ) ,
                        ),
                      ),
                    ]
                  ),
                  SizedBox(height: 6,),
                  Text('600+ bought in past month'),
                  SizedBox(height: 10,)
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Limited time deal',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     SizedBox(width: 10,),
                //     Text('-88%',
                //       style: TextStyle(
                //           color: Colors.red,
                //         fontSize: 35
                //       ),),
                //     SizedBox(width: 10,),
                //     Text('299',
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 35
                //       ),),
                //   ],
                // ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    RichText(
                      textDirection: TextDirection.ltr,
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          style: TextStyle(wordSpacing: 20),
                            children: [
                              TextSpan(
                                text: '-88%',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 30,
                                  wordSpacing: 20
                                )

                              ),
                              TextSpan(
                                text: '₹',
                                style: TextStyle(
                                  wordSpacing: 20
                                )
                              ),
                              TextSpan(
                                text: '299',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30
                                ),
                              )
                            ]
                        )),
                  ],
                ),
                SizedBox(height: 3,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Text('Inclusive of all taxes'),
                  ],
                ),
                Divider(color: Colors.grey,),
                SizedBox(height: 6,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Iconify(Mdi.percent_circle_outline),
                    SizedBox(width: 30,),
                    Text('All Offers & discounts'),
                    SizedBox(width: 160,),
                    Icon(Icons.chevron_right),
                  ],
                ),
                SizedBox(height: 6,),
                Divider(color: Colors.grey,),
                SizedBox(height: 8,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Stack(
                        children: [
                          Iconify(Ph.tag_simple_light,size: 30,),
                          Positioned(
                            top: 7,
                              left: 5,
                              child: Iconify(Ph.currency_inr_light,color: Colors.orange,size: 15,))
                        ]
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [
                        Text('Coupon Discount',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Save 2% ',
                              style: TextStyle(
                                backgroundColor: Colors.green
                              )
                            ),
                            TextSpan(
                              text: 'now.'
                            ),
                            TextSpan(
                              text: 'Details',
                              style: TextStyle(
                                color: Colors.blue
                              )
                            )
                          ]
                        )),
                      ],
                    ),
                    SizedBox(width: 105,),
                    SizedBox(
                      height: 45,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                              backgroundColor: Colors.white.withOpacity(1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            side: BorderSide(color: Colors.black)
                          ),
                          child: Text('Apply',style: TextStyle(color: Colors.black),)),
                    ),

                  ],
                ),
                SizedBox(height: 8,),
                Divider(color: Colors.grey,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Text('Total: ₹299',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'FREE delivery',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 17
                          )
                        ),
                        TextSpan(
                          text: ' Thursday, 16 May ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                          )
                        ),
                        TextSpan(
                          text: 'on orders',
                          style: TextStyle(
                            fontSize: 17
                          )
                        )
                      ]
                    )),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'dispatched by Amazon over ₹499. ',
                              style: TextStyle(
                                  fontSize: 17
                              )
                          ),
                          TextSpan(
                              text: 'Details',
                              style: TextStyle(
                                  fontSize: 17,
                                color: Colors.blue,
                              )
                          )
                        ]
                    )),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Or fastest delivery',
                              style: TextStyle(
                                  fontSize: 17
                              )
                          ),
                          TextSpan(
                              text: ' Tomorrow, 14 May. ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17
                              )
                          ),
                          TextSpan(
                              text: 'Order',
                              style: TextStyle(
                                  fontSize: 17
                              )
                          )
                        ]
                    )),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'within ',
                              style: TextStyle(
                                  fontSize: 17
                              )
                          ),
                          TextSpan(
                              text: '23 mins. ',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.green,
                              )
                          ),
                          TextSpan(
                            text: 'Details',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 17,
                            )
                          )
                        ]
                    )),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 6,),
                    Text('Delivering to Coimbatore 641021 - Update location',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Text('In stock',
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    SizedBox(
                      height: 40,
                      width: 70,
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(6),
                        elevation: 1,
                        enableFeedback: true,
                        value: dropDownValue,
                          icon: Icon(Icons.keyboard_arrow_down_sharp),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text('Qty: '+items),
                            );
                          }).toList(),
                          onChanged: (String? newValue){
                          setState(() {
                            dropDownValue = newValue!;
                          });
                          }),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 1.0,
                        shadowColor: Colors.grey,
                        backgroundColor: Colors.yellow[600],
                      ),
                        onPressed: (){},
                        child: Text('Add to Cart',style: TextStyle(color: Colors.black),))),
                SizedBox(height: 7,),
                SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 1.0,
                          shadowColor: Colors.grey,
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: (){},
                        child: Text('Buy Now',style: TextStyle(color: Colors.black),))),
                SizedBox(height: 30,)
              ],
            )
          ]))
        ],
      ),
    );
  }
}
