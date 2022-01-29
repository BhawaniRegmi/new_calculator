import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      title: "New Calculator",
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String firstNum = "";
  String output = "";

  pressed(String btnVal) {
    setState(() {
      firstNum = btnVal;
      output = btnVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text("$output"),
                height: 50,
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  children: [
                    MaterialButton(
                        child: Text("7"),
                        onPressed: () {
                          pressed("7");
                        }),
                    MaterialButton(
                        child: Text("8"),
                        onPressed: () {
                          pressed("8");
                        }),
                    MaterialButton(
                        child: Text("9"),
                        onPressed: () {
                          pressed("9");
                        }),
                    MaterialButton(child: Text("*"), onPressed: () {})
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    MaterialButton(child: Text("4"), onPressed: () {}),
                    MaterialButton(child: Text("5"), onPressed: () {}),
                    MaterialButton(child: Text("6"), onPressed: () {}),
                    MaterialButton(child: Text("+"), onPressed: () {})
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    MaterialButton(child: Text("1"), onPressed: () {}),
                    MaterialButton(child: Text("2"), onPressed: () {}),
                    MaterialButton(child: Text("3"), onPressed: () {}),
                    MaterialButton(child: Text("-"), onPressed: () {})
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    MaterialButton(child: Text("c"), onPressed: () {}),
                    MaterialButton(child: Text("0"), onPressed: () {}),
                    MaterialButton(child: Text("/"), onPressed: () {}),
                    MaterialButton(child: Text("="), onPressed: () {})
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("New Calculator"),
        ));
  }
}
