import 'dart:developer';
import 'package:flutter/material.dart';

class StateFullCounter extends StatefulWidget {
  @override
  _StateFullCounterState createState() => _StateFullCounterState();
}

class _StateFullCounterState extends State<StateFullCounter> {
  int counter = 10;
  late List categorisList = [
    {"name": "Electronics", "image": "assets/10167.jpg"},
    {"name": "Shoe", "image": "assets/shoe.jpg"},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text("accountName"),
                accountEmail: Text(
                  "accountEmail",
                ),
                currentAccountPicture: CircleAvatar(
                  child: Text("A"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          // leading: const Icon(Icons.keyboard_arrow_left),
          title: const Text("Software 4th"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.language)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 280,
                child: ListView.builder(
                    itemCount: categorisList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return categoryContainer(categorisList[index]);
                    }
                    // children: [

                    //   for (String s in categorisList) categoryContainer(s),

                    // categoryContainer(),
                    // categoryContainer(),
                    // categoryContainer(),

                    // ]
                    ),
              ),
              // const Text(
              //   "Counting",
              //   style: TextStyle(fontSize: 50, color: Colors.green),
              // ),
              const Text(
                "Products",
                style: TextStyle(fontSize: 30),
              ),

              Column(
                children: [
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  Container(
                    height: 100,
                    color: Colors.red,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(increment);
              log(counter.toString());
            }),
      ),
    );
  }

  increment() {
    counter = counter + 10;
  }
}

class categoryContainer extends StatelessWidget {
  const categoryContainer(this.category);
  final Map<String, dynamic> category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: 250,
      child: Stack(children: [
        Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.only(
              left: 15,
            ),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(width: 10, color: Colors.redAccent),
                borderRadius: BorderRadius.circular(15),
                color: Colors.amber),
            child: Wrap(direction: Axis.horizontal, children: [
              Image.asset(category['image']),
              Text(
                category['name'],
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ])),
        const Positioned(
            bottom: 10,
            right: 0,
            child: CircleAvatar(
              radius: 40,
              child: Text("A"),
            ))
      ]),
    );
  }
}
