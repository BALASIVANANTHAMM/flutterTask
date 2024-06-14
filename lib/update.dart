import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  final int number;
  final int i;
  final Function(int, int) edit;

  Update({
    required this.number,
    required this.i,
    required this.edit,
  });

  final TextEditingController _ctl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _ctl.text = number.toString();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Edit",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: _ctl,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Edit Number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    final String newText = _ctl.text;
                    if (newText.isNotEmpty) {
                      final int? newNumber = int.tryParse(newText);
                      if (newNumber != null) {
                        edit(i, newNumber);
                        Navigator.of(context).pop();
                      }
                    }
                  },
                  child: Text("change"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
