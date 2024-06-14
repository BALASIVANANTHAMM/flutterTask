import 'package:flutter/material.dart';

class DemoCalc extends StatefulWidget {
  const DemoCalc({super.key});

  @override
  State<DemoCalc> createState() => _DemoCalcState();
}

class _DemoCalcState extends State<DemoCalc> {
  final ctrl = TextEditingController();
  var text = 'Submit';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: ctrl,
          ),
          ElevatedButton(onPressed: (){
            if(ctrl.text.isEmpty){
              ctrl.value=TextEditingValue(text: text);
            }else{
              ctrl.value=TextEditingValue(text: text+=text);
            }
          }, child: Text('Submit'))
        ],
      ),
    );
  }
}
