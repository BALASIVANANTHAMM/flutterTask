import 'package:flutter/material.dart';

class NewUi extends StatefulWidget {
  const NewUi({super.key});

  @override
  State<NewUi> createState() => _NewUiState();
}

class _NewUiState extends State<NewUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("assets/abc.jpg"),
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        title: Center(
            child: Icon(Icons.home_outlined,size: 35,)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("GT",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(55),
            child: Container(
              height: 300,
              width: 300,
              child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text("Enter Name",
                              style: TextStyle(
                                  color: Colors.black,
                              fontWeight: FontWeight.bold),
                              ),
                              icon: Icon(Icons.person),
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text("Enter Password",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                              icon: Icon(Icons.password,color: Colors.black,),
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Login",
                            style: TextStyle(
                                fontSize: 25
                            ),
                          ),
                        ),),
                    ],
                  ),
              ),
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(
                  image: AssetImage("assets/b.png"),
                  fit: BoxFit.fill
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }
}
