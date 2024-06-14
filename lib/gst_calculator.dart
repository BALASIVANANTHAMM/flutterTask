import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';

class Gst extends StatefulWidget {
  const Gst({super.key});

  @override
  State<Gst> createState() => _GstState();
}

class _GstState extends State<Gst> {
  final gCtrl=TextEditingController();
  final tCtrl=TextEditingController();
  final eACtrl=TextEditingController();
  final eGCtrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('GST Calculator'),
        actions: [
          IconButton(onPressed: (){
            eACtrl.text='';
            eGCtrl.text='';
            tCtrl.text='';
            gCtrl.text='';
          }, icon: Iconify(Carbon.text_clear_format))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 30,),
              Text('Amount',style: TextStyle(
                color: Colors.white
              ),),
              SizedBox(width: 50,),
              SizedBox(
                  width: 200,
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    controller: eACtrl,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white54,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white12),
                        borderRadius: BorderRadius.circular(9)
                      )
                    ),
                  ))
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 30,),
              Text('Gst Percent',style: TextStyle(
                  color: Colors.white
              ),),
              SizedBox(width: 30,),
              SizedBox(
                  width: 200,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    controller: eGCtrl,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white54,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white12),
                            borderRadius: BorderRadius.circular(9)
                        )
                    ),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white12
                      ),
                      onPressed: (){
                        double a = double.parse(eACtrl.text);
                        double b = double.parse(eGCtrl.text);
                        double g = a*(b/100);
                        double t = a+g;
                        gCtrl.text=g.toStringAsFixed(2);
                        tCtrl.text=t.toStringAsFixed(2);
                      }, child: Text('Exclusive',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),))),
              SizedBox(width: 10,),
              SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white12
                      ),
                      onPressed: (){
                        double a = double.parse(eACtrl.text);
                        double b = double.parse(eGCtrl.text);
                        double g = a-(a*(100/(100+b)));
                        double t = a-g;
                        gCtrl.text=g.toStringAsFixed(2);
                        tCtrl.text=t.toStringAsFixed(2);
                      }, child: Text('Inclucive',style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),)))
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 30,),
              Text('Amount',style: TextStyle(
                  color: Colors.white
              ),),
              SizedBox(width: 50,),
              SizedBox(
                  width: 200,
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    controller: eACtrl,
                    readOnly: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white54,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white12),
                            borderRadius: BorderRadius.circular(9)
                        )
                    ),
                  ))
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 30,),
              Text('Gst Rs',style: TextStyle(
                  color: Colors.white
              ),),
              SizedBox(width: 60,),
              SizedBox(
                  width: 200,
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    controller: gCtrl,
                    readOnly: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white54,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white12),
                            borderRadius: BorderRadius.circular(9)
                        )
                    ),
                  ))
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 30,),
              Text('Total',style: TextStyle(
                  color: Colors.white
              ),),
              SizedBox(width: 70,),
              SizedBox(
                  width: 200,
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                    controller: tCtrl,
                    readOnly: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white54,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white12),
                            borderRadius: BorderRadius.circular(9)
                        )
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
