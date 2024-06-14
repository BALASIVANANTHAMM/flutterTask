import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/validate.dart';

import 'bottom.dart';
import 'gtUi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(120),
              bottomRight: Radius.circular(120)
          )
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.account_circle,color: Colors.white,),
        ),
        title: Text('Home',
        style: TextStyle(
          color: Colors.white,
            fontWeight: FontWeight.bold
        ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            onPressed: (){
            },
          ),
        )],
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(image: AssetImage('assets/e.png'))
              ),
            ),
          ),
          SizedBox(height: 15,),
          Text('Name Of The User'),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.contacts),
              title: Row(
                children: [
                  SizedBox(width: 85,),
                  Text('Contact Details'),
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 100,),
              Text('Mobile : ',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 70,),
              Text('9*********',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 94,),
              Text('Address : ',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 70,),
              Text('Area Of User',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 121,),
              Text('City : ',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 70,),
              Text('City Of User',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.border_color_outlined),
              title: Row(
                children: [
                  SizedBox(width: 85,),
                  Text('Qualification'),
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 68,),
              Text('Department : ',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 70,),
              Text('**** Of User',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(height: 40,),
          GestureDetector(
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.black,
              ),
              child: Row(
                children: [
                  SizedBox(width: 50,),
                  Icon(Icons.logout_sharp,color: Colors.white,
                    weight:100,
                    size: 25,),
                  SizedBox(width: 5,),
                  Text('Logout',style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),)
                ],
              ),
            ),
            onTap: ()=>showDialog(
              context: context,
              builder:(context)=> AlertDialog(
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                title: Text('Want to Logout?'),
                elevation: 5.0,
                titleTextStyle: TextStyle(
                  fontSize: 20
                ),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text('No')),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Validate()),
                    );
                  }, child: Text('Yes')),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}

