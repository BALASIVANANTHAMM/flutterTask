import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> item = [
    '  Insta_Id 1',
    '  Insta_Id 2',
  ];
  var dropValue = '  Insta_Id 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 8,),
          Row(
            children: [
              SizedBox(width: 15,),
              SizedBox(
                width: 150,
                height: 40,
                child: DropdownButtonFormField(
                  dropdownColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                  ),
                  elevation: 0,
                  isDense: true,
                  icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                  value: dropValue,
                  items: item.map((String item) {
                    return DropdownMenuItem(
                        value: item,
                        child: Text(item));
                  }
                  ).toList(),
                  onChanged: (value) {
                    setState(() {
                      dropValue=value!;
                    });
                  },),
              ),
              SizedBox(width: 115,),
              Iconify(Ic.outline_alternate_email,color: Colors.white,size: 30,),
              SizedBox(width: 9,),
              Iconify(MaterialSymbols.add_box_outline_sharp,color: Colors.white,size: 30,),
              SizedBox(width: 9,),
              Icon(Icons.menu_outlined,color: Colors.white,size: 30,),
              SizedBox(width: 10,)
            ],
          ),
          SizedBox(height: 35,),
          Row(
            children: [
              SizedBox(width: 15,),
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/e.png'))
                        ),
                      ),
                      SizedBox(height: 6,),
                      Text('User Name',style: TextStyle(
                          color: Colors.white
                      ),)
                    ],
                  ),
                  Positioned(
                      bottom: 28,
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Iconify(MaterialSymbols.add_circle_rounded,color: Colors.blue,))),

                ],
              ),
              SizedBox(width: 60,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('47',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 4,),
                  Text('posts',style: TextStyle(
                      color: Colors.white
                  ),)
                ],
              ),
              SizedBox(width: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('426',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 4,),
                  Text('followers',style: TextStyle(
                      color: Colors.white
                  ),)
                ],
              ),
              SizedBox(width: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('468',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 4,),
                  Text('following',style: TextStyle(
                      color: Colors.white
                  ),)
                ],
              )
            ],
          ),
          SizedBox(height: 9,),
          Row(
            children: [
              SizedBox(width: 15,),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black38,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(9)
                ),
                child: Text('@username',style: TextStyle(
                    color: Colors.white
                ),),
              )
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              SizedBox(width: 15,),
              Text('Some text%text',style: TextStyle(color: Colors.white),)
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              SizedBox(width: 15,),
              Text('Some text%text',style: TextStyle(
                  color: Colors.white
              ),)
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              SizedBox(width: 15,),
              Text('Some text%text',style: TextStyle(
                  color: Colors.white
              ),)
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 15,),
              SizedBox(
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          backgroundColor: Colors.white12
                      ),
                      onPressed: (){},
                      child: Text('Edit Profile',style: TextStyle(
                          color: Colors.white
                      ),))),
              SizedBox(width: 7,),
              SizedBox(
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                        backgroundColor: Colors.white12,
                      ),
                      onPressed: (){},
                      child: Text('Share Profile',style: TextStyle(color: Colors.white),))),
              SizedBox(width: 7,),
              SizedBox(
                width: 70,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      backgroundColor: Colors.white12,
                    ),
                    onPressed: (){},
                    child: Iconify(Ic.outline_person_add,color: Colors.white,)),
              )
            ],
          ),

          SizedBox(height: 10,),
          Container(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    SizedBox(width: 15,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/a.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/a.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/a.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/a.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/a.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/a.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/a.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/a.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/a.jpg')),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          // DefaultTabController(
          //   length: 3,
          //   child: TabBar(
          //     indicatorColor: Colors.white,
          //     indicatorSize: TabBarIndicatorSize.tab,
          //     dividerColor: Colors.transparent,
          //     tabs: [
          //       Tab(icon: Iconify(Cil.grid,color: Colors.white,)),
          //       Tab(icon: Iconify(Mdi.movie_play_outline,color: Colors.white,)),
          //       Tab(icon: Iconify(Ic.round_person_outline,color: Colors.white,))
          //     ],),
          //
          // )


        ],
      ),
    );
  }
}
