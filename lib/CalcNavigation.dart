import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';

import 'age_calculator.dart';
import 'bmi_calculator.dart';
import 'calculator.dart';
import 'gst_calculator.dart';

class CalcNav extends StatefulWidget {
  const CalcNav({super.key});

  @override
  State<CalcNav> createState() => _CalcNavState();
}

class _CalcNavState extends State<CalcNav> {
  int _index = 0;
  final screens = [
    const Calculator(),
    const Gst(),
    const Bmi(),
    const AgeCalc()
  ];
  void tab(index){
    setState(() {
      _index=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: _index,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        unselectedItemColor: Colors.black,
        fixedColor: CupertinoColors.systemBlue,
        onTap: tab,
        items: const [
          BottomNavigationBarItem(
              icon: Iconify(Ion.calculator_outline),
              label: 'Calc'
          ),
          BottomNavigationBarItem(
              icon: Iconify(Ion.document_text_outline),
              label: 'GST'
          ),
          BottomNavigationBarItem(
              icon: Iconify(Ion.bicycle_outline),
              label: 'BMI'
          ),
          BottomNavigationBarItem(
              icon: Iconify(Ion.calendar_outline) ,
              label: 'AGE'
          ),
        ],
      ),
    );
  }
}
