import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabLayoutScreen(),
    );
  }
}
class TabLayoutScreen extends StatefulWidget {
  const TabLayoutScreen({super.key});

  @override
  State<TabLayoutScreen> createState() => _TabLayoutScreenState();
}

class _TabLayoutScreenState extends State<TabLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Layout Screen"),
          backgroundColor: Colors.blueAccent,
          bottom: TabBar(tabs: [
            Tab(child: Text("Home"),),
            Tab(child: Text("Status"),),
            Tab(child: Text("Calls"),),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            color: CupertinoColors.inactiveGray,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),  Container(
            color: Colors.pink,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),  Container(
            color: Colors.orangeAccent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ]),
      ),
    );
  }
}

