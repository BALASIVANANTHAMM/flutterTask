
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/Tabbar.dart';

import 'bottom.dart';

class Validate extends StatefulWidget {
  const Validate({super.key});

  @override
  State<Validate> createState() => _ValidateState();
}

class _ValidateState extends State<Validate> {
  bool show =false;
  int text =0;
  RegExp pattern = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  RegExp namePattern = RegExp(r"^[a-zA-Z.]");
  final ctrl = TextEditingController();
  final ctrl2 = TextEditingController();
  final ctrl3 = TextEditingController();
  final ctrl4 = TextEditingController();
  // void _validatedName(name){
  //   if(name==null || name.isEmpty || !name.contains(namePattern)){
  //     return _validatedName(name);
  //   }
  //   else{
  //     return null;
  //
  //   }
  // }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/c.jpg'),
              ),
              shape: BoxShape.circle
            ),
          ),
        ),
        title: Text('Validation'),
      ),
      body: Column(
        children: [
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 520,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/c.jpg')),
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaY: 20,
                    sigmaX: 20
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text('Form',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                      ),
                      Form(
                        key: _formData,
                          child: Column(
                            children: [
                              SizedBox(height: 40,),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onChanged: (e){
                                    if(ctrl.text.isNotEmpty){
                                      setState(() {
                                        show=ctrl2.text.isNotEmpty?true:false;
                                      });
                                    }else{
                                      setState(() {
                                        show=false;
                                      });
                                    }
                                  },
                                  controller: ctrl,
                                  keyboardType: TextInputType.name,

                                  validator: validateName,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                         // color:validateName?Colors.green:Colors.grey,
                                      ),
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    label: Text('Enter Name'),
                                    icon: Icon(Icons.person),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onChanged: (e){
                                    if(ctrl2.text.isNotEmpty){
                                      setState(() {
                                        show=ctrl3.text.isNotEmpty?true:false;
                                      });
                                    }else{
                                      setState(() {
                                        show=false;
                                      });
                                    }
                                  },
                                  controller: ctrl2,
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  validator: validatePhone,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green),
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    label: Text('Enter Phone No'),
                                    icon: Icon(Icons.phone),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onChanged: (e){
                                    if(ctrl3.text.isNotEmpty){
                                      setState(() {
                                        show=ctrl4.text.isNotEmpty?true:false;
                                      });
                                    }else{
                                      setState(() {
                                        show=false;
                                      });
                                    }
                                  },
                                  controller: ctrl3,
                                  validator: validateEmail,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.green),
                                      borderRadius: BorderRadius.circular(8)
                                    ),
                                    label: Text('Enter Email'),
                                    icon: Icon(Icons.email),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onChanged: (e){
                                    if(ctrl4.text.isNotEmpty){
                                      setState(() {
                                        show=true;
                                      });
                                    }else{
                                      setState(() {
                                        show=false;
                                      });
                                    }
                                  },
                                  controller: ctrl4,
                                  validator: validatePassword,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.green),
                                        borderRadius: BorderRadius.circular(8)
                                    ),
                                    label: Text('Enter Password'),
                                    icon: Icon(Icons.password),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Visibility(
                                  visible:show,
                                  child: ElevatedButton(
                                      onPressed: (){
                                        if(_formData.currentState!.validate()){
                                            ScaffoldMessenger.of(context);
                                        }else{
                                          return null;
                                        }
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(builder: (context) => const tabBar()),
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Submit',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold
                                        ),
                                        ),
                                      )),
                                ),
                              )
                            ],
                          ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String? validateName(String? name){
    if(name==null || name.isEmpty || !name.contains(namePattern)){
      return 'Name Not Valid';
    }
    else{
      return null;
    }
  }
  String? validatePhone(String? phone){
    if(phone==null || phone.isEmpty || phone.length>10 || phone.length<10){
      return 'Phone No Not Valid';
    }
    return null;
  }
  String? validateEmail(String? email){
    if(email==null || email.isEmpty || !email.contains(pattern)){
      return 'Email Id Not Valid';
    }
    return null;
  }
  String? validatePassword(String? password){
    if(password==null || password.isEmpty || password.length<7){
      return 'Password Not Valid';
    }
    return null;
  }
}

final _formData = GlobalKey<FormState>();

