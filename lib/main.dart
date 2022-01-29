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
  int firstNum = 0;
  int seconNum = 0;
  String operator = "";
  String output = "0";
  String result = "";

  pressed(String btnVal) {
    if (btnVal == "c") {
      result = "0";
    } else if (btnVal == "/" ||
        btnVal == "+" ||
        btnVal == "-" ||
        btnVal == "*") {
      operator = btnVal;

      if (btnVal == "/") {
        operator = "/";
      }
    } else if (btnVal == "=") {
      if (operator == "/") {
        result = (firstNum / seconNum).toString();
      }
    } else {
      firstNum = int.parse(btnVal);
      seconNum = int.parse(btnVal);
      result = btnVal;
    }
    setState(() {
      output = result;
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
                    MaterialButton(
                        child: Text("*"),
                        onPressed: () {
                          pressed("*");
                        })
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    MaterialButton(
                        child: Text("4"),
                        onPressed: () {
                          pressed("4");
                        }),
                    MaterialButton(
                        child: Text("5"),
                        onPressed: () {
                          pressed("5");
                        }),
                    MaterialButton(
                        child: Text("6"),
                        onPressed: () {
                          pressed("6");
                        }),
                    MaterialButton(
                        child: Text("+"),
                        onPressed: () {
                          pressed("+");
                        })
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    MaterialButton(
                        child: Text("1"),
                        onPressed: () {
                          pressed("1");
                        }),
                    MaterialButton(
                        child: Text("2"),
                        onPressed: () {
                          pressed("2");
                        }),
                    MaterialButton(
                        child: Text("3"),
                        onPressed: () {
                          pressed("3");
                        }),
                    MaterialButton(
                        child: Text("-"),
                        onPressed: () {
                          pressed("-");
                        })
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    MaterialButton(
                        child: Text("c"),
                        onPressed: () {
                          pressed("c");
                        }),
                    MaterialButton(
                        child: Text("0"),
                        onPressed: () {
                          pressed("0");
                        }),
                    MaterialButton(
                        child: Text("/"),
                        onPressed: () {
                          pressed("/");
                        }),
                    MaterialButton(
                        child: Text("="),
                        onPressed: () {
                          pressed("=");
                        })
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
