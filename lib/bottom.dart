import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/mdi.dart';

import 'package:login/spotify.dart';

import 'amazon.dart';

import 'instagram.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {

  int _index = 0;
  final screens = [
    Amazon(),
    Spotify(),
    Instagram()
  ];

  void tap(index){
    setState(() {
      _index=index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: screens
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal[200],
        currentIndex: _index,
        onTap: tap,
        items: [
          BottomNavigationBarItem(
              icon: Iconify(Ion.logo_amazon),
              label: 'Amazon'
          ),
          BottomNavigationBarItem(
              icon: Iconify(Mdi.spotify),
              label: 'Spotify'
          ),
          BottomNavigationBarItem(
              icon: Iconify(Mdi.instagram),
              label: 'Instagram'
          ),
        ],
      ),
    );
  }
}
