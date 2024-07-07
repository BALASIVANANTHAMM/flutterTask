import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/cil.dart';

import 'package:iconify_flutter/icons/ic.dart';

import 'package:iconify_flutter/icons/mdi.dart';
import 'package:http/http.dart' as http;
import 'package:login/profile.dart';

import 'api/productList.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> with TickerProviderStateMixin {
  TabController? _controller;
  final _children = [
    Iconify(Cil.grid),
    Iconify(Mdi.movie_play_outline),
    Iconify(Ic.round_person_outline)
  ];

  Future<List<ListApi>> fetch() async {
    var res = await http.get(Uri.parse("https://fakestoreapi.com/products"));
    var data = jsonDecode(res.body);
    return (data as List).map((e) => ListApi.fromJson(e)).toList();
  }
  @override
  void initState() {
    _controller =
        TabController(length: _children.length, vsync: this);
    super.initState();
  }

List<String> item = [
    '  Insta_Id 1',
    '  Insta_Id 2',
  ];
var dropValue = '  Insta_Id 1';
  List<String>posts=[
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
    "assets/lan3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context,bool isScrolled){
              return [
                SliverAppBar(
                  flexibleSpace: Profile(),
                  backgroundColor: Colors.transparent,
                  collapsedHeight: 482,
                  expandedHeight: 482,
                ),
                SliverPersistentHeader(
                  delegate: MyDelegate(
                      TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.black,
                        tabs: [
                          Tab(icon: Iconify(Cil.grid,color: Colors.white,)),
                          Tab(icon: Iconify(Mdi.movie_play_outline,color: Colors.white,)),
                          Tab(icon: Iconify(Ic.round_person_outline,color: Colors.white,))
                        ],
                        indicatorColor: Colors.white,
                        unselectedLabelColor: Colors.grey,
                        labelColor: Colors.black,
                      )
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [1,2,3].map((tab) =>
            GridView.count(
            // physics: ScrollPhysics(),
            crossAxisCount: 3,
            shrinkWrap: true,
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
            children: posts.map((e) =>
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              e
                          ),
                          fit: BoxFit.fill
                      )
                  ),
                )
            ).toList(),
          )
        ).toList(),
            ),
            // Column(
            //   children: [
            //     Row(
            //       children: [
            //         SizedBox(width: 15,),
            //         Stack(
            //           children: [
            //             Column(
            //               children: [
            //                 Container(
            //                   height: 100,
            //                   width: 100,
            //                   decoration: BoxDecoration(
            //                       image: DecorationImage(
            //                           image: AssetImage('assets/e.png'))
            //                   ),
            //                 ),
            //                 SizedBox(height: 6,),
            //                 Text('User Name',style: TextStyle(
            //                     color: Colors.white
            //                 ),)
            //               ],
            //             ),
            //             Positioned(
            //                 bottom: 28,
            //                 right: 0,
            //                 child: Container(
            //                     decoration: BoxDecoration(
            //                         color: Colors.white,
            //                         borderRadius: BorderRadius.circular(50)
            //                     ),
            //                     child: Iconify(MaterialSymbols.add_circle_rounded,color: Colors.blue,))),
            //
            //           ],
            //         ),
            //         SizedBox(width: 60,),
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text('47',style: TextStyle(
            //                 color: Colors.white,
            //                 fontWeight: FontWeight.bold
            //             ),),
            //             SizedBox(height: 4,),
            //             Text('posts',style: TextStyle(
            //                 color: Colors.white
            //             ),)
            //           ],
            //         ),
            //         SizedBox(width: 30,),
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text('426',style: TextStyle(
            //                 color: Colors.white,
            //                 fontWeight: FontWeight.bold
            //             ),),
            //             SizedBox(height: 4,),
            //             Text('followers',style: TextStyle(
            //                 color: Colors.white
            //             ),)
            //           ],
            //         ),
            //         SizedBox(width: 30,),
            //         Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Text('468',style: TextStyle(
            //                 color: Colors.white,
            //                 fontWeight: FontWeight.bold
            //             ),),
            //             SizedBox(height: 4,),
            //             Text('following',style: TextStyle(
            //                 color: Colors.white
            //             ),)
            //           ],
            //         )
            //       ],
            //     ),
            //     SizedBox(height: 9,),
            //     Row(
            //       children: [
            //         SizedBox(width: 15,),
            //         Container(
            //           decoration: BoxDecoration(
            //               color: Colors.black38,
            //               border: Border.all(),
            //               borderRadius: BorderRadius.circular(9)
            //           ),
            //           child: Text('@username',style: TextStyle(
            //               color: Colors.white
            //           ),),
            //         )
            //       ],
            //     ),
            //     SizedBox(height: 8,),
            //     Row(
            //       children: [
            //         SizedBox(width: 15,),
            //         Text('Some text%text',style: TextStyle(color: Colors.white),)
            //       ],
            //     ),
            //     SizedBox(height: 8,),
            //     Row(
            //       children: [
            //         SizedBox(width: 15,),
            //         Text('Some text%text',style: TextStyle(
            //             color: Colors.white
            //         ),)
            //       ],
            //     ),
            //     SizedBox(height: 8,),
            //     Row(
            //       children: [
            //         SizedBox(width: 15,),
            //         Text('Some text%text',style: TextStyle(
            //             color: Colors.white
            //         ),)
            //       ],
            //     ),
            //     SizedBox(height: 10,),
            //     Row(
            //       children: [
            //         SizedBox(width: 15,),
            //         SizedBox(
            //             width: 150,
            //             child: ElevatedButton(
            //                 style: ElevatedButton.styleFrom(
            //                     shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(5)
            //                     ),
            //                     backgroundColor: Colors.white12
            //                 ),
            //                 onPressed: (){},
            //                 child: Text('Edit Profile',style: TextStyle(
            //                     color: Colors.white
            //                 ),))),
            //         SizedBox(width: 7,),
            //         SizedBox(
            //             width: 150,
            //             child: ElevatedButton(
            //                 style: ElevatedButton.styleFrom(
            //                   shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(5)
            //                   ),
            //                   backgroundColor: Colors.white12,
            //                 ),
            //                 onPressed: (){},
            //                 child: Text('Share Profile',style: TextStyle(color: Colors.white),))),
            //         SizedBox(width: 7,),
            //         SizedBox(
            //           width: 70,
            //           child: ElevatedButton(
            //               style: ElevatedButton.styleFrom(
            //                 shape: RoundedRectangleBorder(
            //                     borderRadius: BorderRadius.circular(5)
            //                 ),
            //                 backgroundColor: Colors.white12,
            //               ),
            //               onPressed: (){},
            //               child: Iconify(Ic.outline_person_add,color: Colors.white,)),
            //         )
            //       ],
            //     ),
            //
            //     SizedBox(height: 10,),
            //     Container(
            //       height: 90,
            //       child: ListView(
            //         scrollDirection: Axis.horizontal,
            //         children: [
            //           Row(
            //             children: [
            //               SizedBox(width: 15,),
            //               Container(
            //                 height: 70,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(image: AssetImage('assets/a.jpg')),
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)
            //                 ),
            //               ),
            //               SizedBox(width: 15,),
            //               Container(
            //                 height: 70,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(image: AssetImage('assets/a.jpg')),
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)
            //                 ),
            //               ),
            //               SizedBox(width: 15,),
            //               Container(
            //                 height: 70,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(image: AssetImage('assets/a.jpg')),
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)
            //                 ),
            //               ),
            //               SizedBox(width: 15,),
            //               Container(
            //                 height: 70,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(image: AssetImage('assets/a.jpg')),
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)
            //                 ),
            //               ),
            //               SizedBox(width: 15,),
            //               Container(
            //                 height: 70,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(image: AssetImage('assets/a.jpg')),
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)
            //                 ),
            //               ),
            //               SizedBox(width: 15,),
            //               Container(
            //                 height: 70,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(image: AssetImage('assets/a.jpg')),
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)
            //                 ),
            //               ),
            //               SizedBox(width: 15,),
            //               Container(
            //                 height: 70,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(image: AssetImage('assets/a.jpg')),
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)
            //                 ),
            //               ),
            //               SizedBox(width: 15,),
            //               Container(
            //                 height: 70,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(image: AssetImage('assets/a.jpg')),
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)
            //                 ),
            //               ),
            //               SizedBox(width: 15,),
            //               Container(
            //                 height: 70,
            //                 width: 70,
            //                 decoration: BoxDecoration(
            //                     image: DecorationImage(image: AssetImage('assets/a.jpg')),
            //                     color: Colors.white,
            //                     borderRadius: BorderRadius.circular(50)
            //                 ),
            //               ),
            //               SizedBox(width: 15,),
            //             ],
            //           )
            //         ],
            //       ),
            //     ),
            //     SizedBox(height: 15,),
            //     DefaultTabController(
            //       length: 3,
            //       child: TabBar(
            //         indicatorColor: Colors.white,
            //         indicatorSize: TabBarIndicatorSize.tab,
            //         dividerColor: Colors.transparent,
            //         tabs: [
            //           Tab(icon: Iconify(Cil.grid,color: Colors.white,)),
            //           Tab(icon: Iconify(Mdi.movie_play_outline,color: Colors.white,)),
            //           Tab(icon: Iconify(Ic.round_person_outline,color: Colors.white,))
            //         ],),
            //
            //     )
            //
            //
            //   ],
            // ),
          ),
        ),
      )
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate{
  MyDelegate(this.tabBar);
  final TabBar tabBar;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.black,
      child: tabBar,
    );
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

}
