import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/system_uicons.dart';
import 'package:iconify_flutter/icons/uil.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  bool clk = false;
  var value1='';
  var value2='';
  var operator = '';
  var f = '1';
  var s = '2';
  var t = '3';
  var fo = '4';
  var fi = '5';
  var si = '6';
  var se = '7';
  var e = '8';
  var n = '9';
  var z = '0';
  var zd = '00';
  var d = '.';
  final ctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.all(14),
          child: Iconify(MaterialSymbols.compare_arrows_rounded,color: Colors.white,size: 10,),
        ),
        actions: const [
          Iconify(Ph.calculator_thin,color: Colors.white,),
          SizedBox(width: 15,),
          Iconify(Bi.grid,color: Colors.white,),
          SizedBox(width: 15,),
          Iconify(SystemUicons.menu_vertical,size: 30,color: Colors.white,),
          SizedBox(width: 12,),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
            width: double.infinity,
          ),
          TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
            style: const TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            autofocus: true,
            textDirection: TextDirection.ltr,
            decoration: const InputDecoration(
              focusedBorder: InputBorder.none,
              filled: true,
              fillColor: Colors.white12,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(15),
          //   child: Container(
          //       width: double.infinity,
          //       child: Text(input,style: TextStyle(color: Colors.white,fontSize: 30),)),
          // ),
          const SizedBox(height: 25,),
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='';
                          value1='';
                          value2='';
                          operator='';
                          clk=false;
                        },
                        child: const Text('AC',style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                    ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='^';
                          operator='^';
                          clk=true;
                        },
                        child: const Text('^',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(ctrl.text.isNotEmpty){
                            ctrl.text=ctrl.text.substring(0,ctrl.text.length-1);
                            value2='';
                            value1='';
                            operator='';
                            clk=false;
                          }
                        }, child: Icon(CupertinoIcons.clear_circled,color: Colors.white,size: 35,)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='÷';
                          operator='/';
                          clk=true;

                        }, child:Iconify(Ph.divide_bold,color: Colors.white,size: 35,))),
              )
            ],
          ),
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          setState(() {
                            if(clk){
                              if(ctrl.text.isEmpty){
                                ctrl.text=se;
                                value2=se;
                              }else{
                                ctrl.text+=se;
                                value2+=se;
                              }
                            }else{
                              if(ctrl.text.isEmpty){
                                ctrl.text=se;
                                value1=se;
                              }else{
                                ctrl.text+=se;
                                value1+=se;
                              }
                            }
                          });
                        }, child: Text('7',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          setState(() {
                            if(clk){
                              if(ctrl.text.isEmpty){
                                ctrl.text=e;
                                value2=e;
                              }else{
                                ctrl.text+=e;
                                value2+=e;
                              }
                            }else{
                              if(ctrl.text.isEmpty){
                                ctrl.text=e;
                                value1=e;
                              }else{
                                ctrl.text+=e;
                                value1+=e;
                              }
                            }
                          });
                        },
                        child: Text('8',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(clk){
                            if(ctrl.text.isEmpty){
                              ctrl.text=n;
                              value2=n;
                            }else{
                              ctrl.text+=n;
                              value2+=n;
                            }
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=n;
                              value1=n;
                            }else{
                              ctrl.text+=n;
                              value1+=n;
                            }
                          }
                        }, child: Text('9',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='×';
                          operator='*';
                          clk=true;
                        }, child:Iconify(Uil.multiply,size: 25,color: Colors.white,))),
              )
            ],
          ),
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(clk){
                            if(ctrl.text.isEmpty){
                              ctrl.text=fo;
                              value2=fo;
                            }else{
                              ctrl.text+=fo;
                              value2+=fo;
                            }
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=fo;
                              value1=fo;
                            }else{
                              ctrl.text+=fo;
                              value1+=fo;
                            }
                          }
                        }, child: Text('4',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),)
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(clk){
                            if(ctrl.text.isEmpty){
                              ctrl.text=fi;
                              value2=fi;
                            }else{
                              ctrl.text+=fi;
                              value2+=fi;
                            }
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=fi;
                              value1=fi;
                            }else{
                              ctrl.text+=fi;
                              value1+=fi;
                            }
                          }
                        },
                        child: Text('5',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(clk){
                            if(ctrl.text.isEmpty){
                              ctrl.text=si;
                              value2=si;
                            }else{
                              ctrl.text+=si;
                              value2+=si;
                            }
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=si;
                              value1=si;
                            }else{
                              ctrl.text+=si;
                              value1+=si;
                            }
                          }
                        }, child: Text('6',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='-';
                          operator='-';
                          clk=true;
                        }, child:Text('-',style: TextStyle(
                        color: Colors.white,
                        fontSize: 40
                    ),))),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(clk){
                            if(ctrl.text.isEmpty){
                              ctrl.text=f;
                              value2=f;
                            }else{
                              ctrl.text+=f;
                              value2+=f;
                            }
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=f;
                              value1=f;
                            }else{
                              ctrl.text+=f;
                              value1+=f;
                            }
                          }
                        }, child: Text('1',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(clk){
                            if(ctrl.text.isEmpty){
                              ctrl.text=s;
                              value2=s;
                            }else{
                              ctrl.text+=s;
                              value2+=s;
                            }
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=s;
                              value1=s;
                            }else{
                              ctrl.text+=s;
                              value1+=s;
                            }
                          }
                        },
                        child: Text('2',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          // if(ctrl.text.isEmpty){
                          //   ctrl.value=TextEditingValue(
                          //       text: t
                          //   );
                          // }else{
                          //   ctrl.value=TextEditingValue(
                          //       text: ctrl.text+=t
                          //   );
                          // }
                          if(clk){
                            if(ctrl.text.isEmpty){
                              ctrl.text=t;
                              value2=t;
                            }else{
                              ctrl.text+=t;
                              value2+=t;
                            }
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=t;
                              value1=t;
                            }else{
                              ctrl.text+=t;
                              value1+=t;
                            }
                          }
                        }, child: Text('3',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='+';
                          operator='+';
                          clk=true;
                        }, child:Text('+',style: TextStyle(
                        color: Colors.white,
                        fontSize: 40
                    ),))),
              )
            ],
          ),
          Row(

            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='√';
                          operator='√';
                          clk=true;

                        }, child: Text('√',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='%';
                          operator='%';
                          clk=true;
                        },
                        child: Text('%',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='!';
                          operator='!';
                          clk=true;
                        }, child: Text('!',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          ctrl.text='';
                          value1='';
                          value2='';
                          operator='';
                          clk=false;
                        }, child:Text('n',style: TextStyle(
                        color: Colors.white,
                        fontSize: 40
                    ),))),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(clk){
                            if(ctrl.text.isEmpty){
                              ctrl.text=zd;
                              value2=zd;
                            }else{
                              ctrl.text+=zd;
                              value2+=zd;
                            }
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=zd;
                              value1=zd;
                            }else{
                              ctrl.text+=zd;
                              value1+=zd;
                            }
                          }
                        }, child: Text('00',style: TextStyle(
                        color: Colors.white,
                        fontSize: 25
                    ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(clk){
                            if(ctrl.text.isEmpty){
                              ctrl.text=z;
                              value2=z;
                            }else{
                              ctrl.text+=z;
                              value2+=z;
                            }
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=z;
                              value1=z;
                            }else{
                              ctrl.text+=z;
                              value1+=z;
                            }
                          }
                        },
                        child: Text('0',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25
                        ),))),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          if(clk){
                            ctrl.text=d;
                            value2=d;
                          }else{
                            if(ctrl.text.isEmpty){
                              ctrl.text=d;
                              value1=d;
                            }else{
                              ctrl.text+=d;
                              value1+=d;
                            }
                          }
                        }, child: Text('.',style: TextStyle(
                        color: Colors.white,
                        fontSize: 40
                    ),)
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white12
                        ),
                        onPressed: (){
                          double a = double.parse(value1);
                          double b = double.parse(value2);
                          double res;
                          switch(operator){
                            case '+':
                              res= (a+b);
                              ctrl.text=res.toString();
                              value1=res.toString();
                              value2='';
                              clk=false;
                              break;
                            case '-':
                              res= (a-b);
                              ctrl.text=res.toString();
                              value1=res.toString();
                              value2='';
                              clk=false;
                              break;
                            case '*':
                              res= (a*b);
                              ctrl.text=res.toString();
                              value1=res.toString();
                              value2='';
                              clk=false;
                              break;
                            case '/':
                              if(b!=0) {
                                res = (a / b);
                                ctrl.text = res.toString();
                                value1=res.toString();
                                value2='';
                                clk=false;
                              }
                              break;
                            case '^':
                              res= (a*a);
                              ctrl.text=res.toString();
                              value1=res.toString();
                              value2='';
                              clk=false;
                              break;
                            case '√':
                              res = sqrt(a);
                              ctrl.text=res.toString();
                              value1=res.toString();
                              value2='';
                              clk=false;
                              break;
                            case '%':
                              res = (a%b);
                              ctrl.text=res.toString();
                              value1=res.toString();
                              value2='';
                              clk=false;
                              break;
                            case '!':
                              res = a/b*100;
                              ctrl.text=res.toString();
                              value1=res.toString();
                              value2='';
                              clk=false;
                              break;
                          }
                        }, child:const Text('=',style: TextStyle(
                        color: Colors.white,
                        fontSize: 40
                    ),))),
              )
            ],
          ),

        ],
      ),
    );
  }
}
