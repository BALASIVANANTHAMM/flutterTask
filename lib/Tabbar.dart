import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login/age_calculator.dart';
import 'package:login/bmi_calculator.dart';
import 'package:login/bottom.dart';
import 'package:login/calculator.dart';
import 'package:login/gst_calculator.dart';

import 'list_enter.dart';

class tabBar extends StatefulWidget {
  const tabBar({super.key});

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> with TickerProviderStateMixin{
  TabController? _tabController;
  final List<Widget> tabs = [
    const Tab(
      text: 'Calc',
    ),
    const Tab(
      text: 'BMI',
    ),
    const Tab(
      text: 'GST',
    ),
    const Tab(
      text: 'AGE',
    ),
    const Tab(
      text: 'Clones',
    ),
    const Tab(
      text: 'List',
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          dragStartBehavior: DragStartBehavior.start,
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          controller: _tabController,
          dividerColor: Colors.transparent,
          tabs: tabs,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.blueAccent),
        ),
      ),
      body: TabBarView(
        children: [
          Calculator(),
          Bmi(),
          Gst(),
          AgeCalc(),
          Bottom(),
          ListEnter()
        ],
        controller: _tabController,
      ),
    );
  }
}
