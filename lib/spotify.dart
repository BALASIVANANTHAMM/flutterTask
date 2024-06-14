import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/lucide.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';

class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  bool r = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color.fromRGBO(34, 17, 4, 2),Color.fromRGBO(16, 8, 1, 2)]
          )
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: [
            SliverLayoutBuilder(
              builder: (BuildContext context, constrains){
                final scroll = constrains.scrollOffset > 200;
                return SliverAppBar(
                  // title: scroll?Text('Hot Hits Hindi',style: TextStyle(
                  //     color: Colors.white
                  // ),):Text(''),
                  snap: true,
                  floating: true,
                  pinned: scroll?true:false,
                  leading: Icon(Icons.keyboard_arrow_left,color: Colors.white,),
                  expandedHeight: 480,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.orange.shade900,Color.fromRGBO(86, 43, 10, 2)]
                        )
                    ),
                    child: FlexibleSpaceBar(
                      title: scroll?Text('Hot Hits Hindi',style: TextStyle(
                          color: Colors.white
                      ),):Text(''),

                      background:  Column(
                        children: [
                          SizedBox(height: 58,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              SizedBox(
                                  width: 300,
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 20,sigmaY: 20),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white12,
                                          hintText: 'Find in playlist',
                                          hintStyle: TextStyle(
                                              color: Colors.white
                                          ),
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Iconify(Ri.search_line,color: Colors.white,),
                                          ),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  )),
                              SizedBox(width: 7,),
                              SizedBox(
                                  height: 48,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.transparent,
                                          backgroundColor: Colors.transparent,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(4)
                                          )
                                      ),
                                      onPressed: (){}, child: Text('Sort',style: TextStyle(
                                      color: Colors.white
                                  ),)))
                            ],
                          ),
                          SizedBox(height: 40,),
                          Image.asset('assets/abc.jpg'),
                          SizedBox(height: 40,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Text('Hottest Hindi music served here. Cover - Animal',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Iconify(SimpleIcons.spotify,color: Color.fromRGBO(27, 139, 19, 2),),
                              SizedBox(width: 5,),
                              Text('Spotify',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Text('2,105,551 saves . 3h 3min',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(width: 15,),
                              Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/1.jpg')
                                  ),
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              SizedBox(width: 15,),
                              Iconify(MaterialSymbols.add_circle_outline_rounded,color: Colors.grey,size: 35,),
                              SizedBox(width: 25,),
                              Iconify(MaterialSymbols.arrow_circle_down_outline_rounded,color: Colors.grey,size: 35,),
                              SizedBox(width: 25,),
                              Iconify(Ph.dots_three_vertical_bold,color: Colors.grey,size: 35,),
                              SizedBox(width: 63,),
                              Iconify(Lucide.shuffle,color: Color.fromRGBO(27, 139, 19, 2),size: 40,),
                              SizedBox(width: 10,),
                              Iconify(MaterialSymbols.play_circle,color: Color.fromRGBO(27, 139, 19, 2),size: 60,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),

            SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 20,
                        (BuildContext context, int index) {
                          return Container(
                            height: 80,
                            child: Row(
                              children: [
                                SizedBox(width: 15,),
                                Container(
                                  height:40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    image: DecorationImage(
                                      image: AssetImage('assets/a.jpg')
                                    )
                                  ),
                                ),
                                SizedBox(width: 20,),
                                Column(
                                  children: [
                                    SizedBox(height: 20,),
                                    Text('Some Song Name',style: TextStyle(
                                      color: Colors.white
                                    ),),
                                    SizedBox(height: 1,),
                                    Text('Arthur Names',style: TextStyle(
                                      color: Colors.grey
                                    ),)
                                  ],
                                ),
                                SizedBox(width: 180,),
                                Iconify(Ph.dots_three_vertical_bold,color: Colors.grey,)

                              ],
                            ),
                          );
                        }
                )
            ),

          ],
        ),
      ),
    );
  }
}
