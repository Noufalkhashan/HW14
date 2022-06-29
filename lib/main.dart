import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Saleh";
  Color appBarColor = Colors.black;
  Icon iconAction = Icon(Icons.face);
  Color iconColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
      ),
      body: ListView(children: [
        Center(
            child: Text(
          "My Name is Nouf $name",
          style: TextStyle(fontSize: 30),
        )),
        Container(
          margin: EdgeInsets.all(15),
          color: Colors.amber,
          child: TextButton(
            onPressed: (() {
              setState(() {
                name = "Alkhashan";
                appBarColor = Colors.amber;
              });
            }),
            child: Text("Press to Changes"),
          ),
        ),
        IconButton(
            color: iconColor,
            onPressed: () {
              setState(() {
                iconAction = Icon(Icons.favorite);
                iconColor = Colors.red;
              });
            },
            icon: iconAction)
      ]),
    );
  }
}
