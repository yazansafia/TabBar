import 'package:app2/a.dart';
import 'package:app2/main.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // GlobalKey<ScaffoldState> myscaffoldkey = new GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> myscaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("appbar"),
          bottom: TabBar(
              indicatorColor: Colors.black,
              // لون الخط
              labelColor: Colors.black,
              // لون الايكون
              indicatorWeight: 4,
              labelStyle: TextStyle(color: Color.fromARGB(255, 10, 166, 244)),
              // تكون هذه خصائص لكل التكست
              // isScrollable: true,
              tabs: [
                Tab(
                  text: "firset",
                  icon: Icon(Icons.car_crash),
                ),
                Tab(
                  text: "second",
                  icon: Icon(Icons.car_crash),
                ),
                Tab(
                  text: "thaird",
                  icon: Icon(Icons.car_crash),
                ),
                Tab(
                  text: "four",
                  icon: Icon(Icons.car_crash),
                ),
                Tab(
                  text: "fifth",
                  icon: Icon(Icons.car_crash),
                ),
              ]),
        ),
        drawer: Drawer(),
        body: TabBarView(children: [
          Container(
            color: Colors.red,
            child: Text(
              "data",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 206, 188, 184),
            child: Text(
              "data",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Color.fromARGB(255, 54, 244, 63),
            child: Text(
              "data",
              style: TextStyle(fontSize: 40),
            ),
          ),
          Text(
            "data",
            style: TextStyle(fontSize: 40),
          ),
          Text(
            "data",
            style: TextStyle(fontSize: 40),
          ),
        ]),
      ),
    );
  }
}
