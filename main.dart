import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DemoState();
  }
}

class DemoState extends State<Demo> with SingleTickerProviderStateMixin {
  TabController tabController;
  void initState() {
    super.initState();

    tabController = new TabController(length: 3, vsync: this, initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(text: 'Tab1'),
            Tab(text: 'Tab2'),
            Tab(text: 'Tab3'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Container(
            child: Center(
              child: Text(
                'Tab1',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Tab2',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Tab3',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
