import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/validate.dart';

class Gt extends StatefulWidget {
  const Gt({super.key});

  @override
  State<Gt> createState() => _GtState();
}

class _GtState extends State<Gt> {
  // Color color = Color(1H197C);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(120),
            bottomLeft: Radius.circular(120)
          )
        ),
        leading: Icon(Icons.keyboard_arrow_left,color: Colors.white,),
        title: Text('Menu',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.home_outlined,color: Colors.white,),
          )
        ],
        backgroundColor: Colors.black,

      ),
      body: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: [
            Card(
              color: Colors.white70,
              child: ListTile(
                leading: Icon(Icons.person_pin_rounded),
                title: Text('Attendance Report'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                leading: Icon(Icons.receipt),
                title: Text('Mock Interview Report'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                leading: Icon(Icons.paid_rounded),
                title: Text('Payment Report'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                leading: Icon(Icons.u_turn_left),
                title: Text('All Students Project Urls'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                leading: Icon(Icons.home_work_rounded),
                title: Text('Leave Request'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                leading: Icon(Icons.feedback),
                title: Text('Feedback'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Card(
              color: Colors.white70,
              child: ListTile(
                leading: Icon(Icons.people_alt_outlined),
                title: Text('Refer a Friend'),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
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
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black87,
                    borderRadius: BorderRadius.circular(7)
                  ),
                  width: 200,
                  height: 50,
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
                  // child: ElevatedButton(
                  //
                  //     onPressed: (){},
                  //     child: Row(
                  //   children: [
                  //     SizedBox(
                  //       width: 15,
                  //     ),
                  //     Icon(Icons.logout_outlined),
                  //     Text('Logout'),
                  //   ],
                  // )),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
