import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("assets/abc.jpg"),
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        title: Center(child: Icon(Icons.home_outlined)),
        actions: [
          Text("GT",
            style: TextStyle(
            fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("Login"),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                    label: Text("User Name"),
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder()
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(label: Text("Password")),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Forgot Password"),),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: (){}, child: Text("Login")),
              ],
            ),
            SizedBox(height: 30,),
           Container(
             height: 300,
             width: 300,
            // color: Colors.cyan,
             decoration: BoxDecoration(
               color: Colors.cyan,
               border: Border.all(),
               //borderRadius: BorderRadius.circular(35),
               image: DecorationImage(
                   image: AssetImage("assets/abc.jpg"),
                 fit: BoxFit.fill
               ),
               shape: BoxShape.circle
             ),
             child: Center(child: Text("ok")),
           ),
          ],
        ),
      ),
    );
  }
}
