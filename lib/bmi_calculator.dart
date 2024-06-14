import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {

  final _scaffoldKey =new GlobalKey<ScaffoldState>();
  late VoidCallback _showBottom;

  final hCtrl = TextEditingController();
  final wCtrl = TextEditingController();
  final tCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        actions: [
          IconButton(onPressed: (){
            hCtrl.text='';
            wCtrl.text='';
            tCtrl.text='';
          }, icon: Iconify(Carbon.text_clear_format))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Enter Height',style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: hCtrl,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white12,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.white12)
                    )
                  ),
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Enter Weight',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: wCtrl,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white12)
                      )
                  ),
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('        Total:',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
              SizedBox(
                width: 200,
                child: TextFormField(
                  controller: tCtrl,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  readOnly: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.white12)
                    ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white12)
                      )
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white12
                      ),
                      onPressed: (){
                        double w = double.parse(wCtrl.text);
                        double h = double.parse(hCtrl.text);
                        double m = h/100;
                        double hh = m*m;
                        double t = w/hh;
                        tCtrl.text=t.toStringAsFixed(2);
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context){
                              return Container(
                                height: 100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: t<21?Colors.orange:(t<25 && t>21?Colors.green:Colors.red),
                                ),
                                child: t<21?Center(
                                    child: Text('Improve',
                                      style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                    ),)):(t<25 && t>21?
                                Center(
                                    child: Text('Normal',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),)):
                                Center(
                                    child: Text('Obesity',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),))),
                              );
                            }
                        );
                      },
                      child: Text('Check BMI',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)))
            ],
          ),
        ],
      ),
    );
  }
  void color(){
    double d = double.parse(tCtrl.text);
    if(d<21){
      Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.orange
        ),
      );
    }
    else if(d>=20 || d<=24){
      Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.green
        ),
      );
    }
    else{
      Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.red
        ),
      );
    }
  }
}
