import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:login/update.dart';

class ListEnter extends StatefulWidget {
  const ListEnter({super.key});

  @override
  State<ListEnter> createState() => _ListEnterState();
}

class _ListEnterState extends State<ListEnter> {
  late int index;
  final Lctrl = ScrollController();
  final List<int> _value = [];
  final ctrl = TextEditingController();
  final ctrl2 = TextEditingController();

  // void edit_Item(int index) {
  //   final ctl = TextEditingController();
  //   ctl.text = _value[index].toString();
  //
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Update Value'),
  //           content: TextFormField(
  //             controller: ctl,
  //             decoration: InputDecoration(hintText: 'Enter'),
  //           ),
  //           actions: [
  //             TextButton(onPressed: () {}, child: Text('Cancel')),
  //             TextButton(
  //                 onPressed: () {
  //                   final String s = ctl.text;
  //                   if (s.isNotEmpty) {
  //                     final int? n = int.tryParse(s);
  //                     if (n != null) {
  //                       setState(() {
  //                         _value[index] = n;
  //                       });
  //                       Navigator.of(context).pop();
  //                     }
  //                   }
  //                 },
  //                 child: Text('Ok'))
  //           ],
  //         );
  //       });
  // }
  void _editItem(int index, int newNumber) {
    setState(() {
      _value[index] = newNumber;
    });
  }

  void _navigateToDetailsScreen(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Update(
          number: _value[index],
          i: index,
          edit: _editItem,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.black,
                title: Text(
                  'Search',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                pinned: true,
              )
            ];
          },
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 320,
                child: TextFormField(
                  controller: ctrl,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                      hintText: 'Enter Value',
                      hintStyle: TextStyle(color: Colors.white, fontSize: 11),
                      suffixIcon: IconButton(
                        icon: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Icon(
                            CupertinoIcons.clear_circled,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          ctrl.text = '';
                        },
                      ),
                      filled: true,
                      fillColor: Colors.white12,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white12),
                          onPressed: () {
                            setState(() {
                              _value.sort();
                            });
                          },
                          child: Text(
                            'Ascending',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))),
                  SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white12),
                          onPressed: () {
                            if (ctrl.text.isNotEmpty) {
                              int? v = int.tryParse(ctrl.text);
                              if (_value != null) {
                                setState(() {
                                  _value.add(v!);
                                });
                              }
                            }
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 125,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white12),
                          onPressed: () {
                            setState(() {
                              List<int> copy = List.from(_value);
                              copy.sort();
                              copy = copy.reversed.toList();
                              _value.clear();
                              _value.addAll(copy);
                            });
                          },
                          child: Text(
                            'Descending',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))),
                  SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white12),
                          onPressed: () {
                            setState(() {
                              if (_value.isNotEmpty) {
                                final int mini =
                                    _value.reduce((m, n) => m < n ? m : n);
                                ctrl.text = mini.toString();
                              }
                            });
                          },
                          child: Text(
                            'Minimum',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))),
                  SizedBox(
                      width: 120,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white12),
                          onPressed: () {
                            setState(() {
                              if (_value.isNotEmpty) {
                                final int mini =
                                    _value.reduce((m, n) => m > n ? m : n);
                                ctrl.text = mini.toString();
                              }
                            });
                          },
                          child: Text(
                            'Maximun',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ))),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _value.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      color: Colors.white12,
                      child: ListTile(
                        onTap: () => _navigateToDetailsScreen(index),
                        // leading: IconButton(
                        //   icon: Icon(Icons.edit),
                        //   onPressed: () {
                        //     _editItem(index);
                        //   },
                        // ),
                        title: Text(
                          _value[index].toString(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              _value.removeAt(index);
                            });
                          },
                          icon: Icon(
                            Icons.delete_outline,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
