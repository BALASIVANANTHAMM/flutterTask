import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AgeCalc extends StatefulWidget {
  const AgeCalc({super.key});

  @override
  State<AgeCalc> createState() => _AgeCalcState();
}

class _AgeCalcState extends State<AgeCalc> {
  final dm = TextEditingController();
  final dd = TextEditingController();
  final dy = TextEditingController();
  final cm = TextEditingController();
  final cd = TextEditingController();
  final cy = TextEditingController();
  final am = TextEditingController();
  final ad = TextEditingController();
  final ay = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Age Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Date of Birth',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 80,
                child: TextFormField(
                  controller: dm,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                    hintText: 'Month',
                    hintStyle: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                  ),
                    filled: true,
                    fillColor: Colors.white12,
                    border: OutlineInputBorder(

                    )
                  ),
                ),
              ),
              SizedBox(
                width: 80,
                child: TextFormField(
                  controller: dd,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      hintText: 'Date',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              ),
              SizedBox(
                width: 80,
                child: TextFormField(
                  controller: dy,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      hintText: 'Year',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 80,),
          Text('Current Date',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 80,
                child: TextFormField(
                  controller: cm,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      hintText: 'Month',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              ),
              SizedBox(
                width: 80,
                child: TextFormField(
                  controller: cd,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      hintText: 'Date',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              ),
              SizedBox(
                width: 80,
                child: TextFormField(
                  controller: cy,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      hintText: 'Year',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 80,),
          Text('Age of Person',style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100,
                child: TextFormField(
                  controller: am,
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      hintText: 'Month',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: TextFormField(
                  controller: ad,
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      hintText: 'Date',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: TextFormField(
                  controller: ay,
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                  decoration: InputDecoration(
                      hintText: 'Year',
                      hintStyle: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 80,),
          SizedBox(
            width: 250,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white12
                ),
                onPressed: (){
                  int bm = int.parse(dm.text);
                  int bd = int.parse(dd.text);
                  int by = int.parse(dy.text);
                  int nm = int.parse(cm.text);
                  int nd = int.parse(cd.text);
                  int ny = int.parse(cy.text);
                  int ageMonth = nm-bm;
                  int ageDate = nd-bd;
                  int ageYear = ny-by;
                  am.text=ageMonth.abs().toString()+' Month';
                  ad.text=ageDate.abs().toString()+' Days';
                  ay.text=ageYear.abs().toString()+' Years';
                },
                child: Text('Check Age',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),)),
          )
        ],
      ),
    );
  }
}
