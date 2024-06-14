import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Visible extends StatefulWidget {
  const Visible({super.key});

  @override
  State<Visible> createState() => _VisibleState();
}

class _VisibleState extends State<Visible> {

  bool show = false;

  final ctrl = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: ctrl ,
            onChanged: (e){
             if(ctrl.text.isNotEmpty)
               {
                 setState(() {
                   show=true;
                 });
               }else{
               setState(() {
                 show=false;
               });
             }
            },
          ),
          SizedBox(height: 20,),
          Visibility(
            visible: show,
            child: ElevatedButton(onPressed: (){
            }, child: Text('submit')),
          )
        ],
      ),
    );
  }
}
