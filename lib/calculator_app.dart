import 'package:flutter/material.dart';

class Calculate extends StatefulWidget {
  @override
  State createState() => new CalculateState();
}

class CalculateState extends State<Calculate> {
  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();
  var num1 = 0.0, num2 = 0.0, sum = 0.0;
  void doAdd() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 / num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Center(
          child: Text(
            "Calculator",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage('assets/beauty.jpeg'),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Output :$sum",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.purpleAccent,
                ),
              ),
              new Container(
                padding: EdgeInsets.only(left: 90.0, right: 90.0, top: 20.0),
                child: Theme(
                  data: new ThemeData(
                    primarySwatch: Colors.teal,
                    brightness: Brightness.dark,
                  ),
                  child: new Column(
                    children: <Widget>[
                      new TextField(
                        keyboardType: TextInputType.number,
                        decoration: new InputDecoration(
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.tealAccent,
                          ),
                          hintText: "Enter number 1",
                        ),
                        controller: t1,
                      ),
                      new TextField(
                        keyboardType: TextInputType.number,
                        decoration: new InputDecoration(
                          hintStyle: TextStyle(
                            fontSize: 20.0,
                            color: Colors.amberAccent,
                          ),
                          hintText: "Enter number 2",
                        ),
                        controller: t2,
                      ),
                    ],
                  ),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: doAdd,
                    color: Colors.redAccent,
                  ),
                  new MaterialButton(
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: doSub,
                    color: Colors.blueAccent,
                  ),
                  new MaterialButton(
                    child: Text(
                      "*",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: doMul,
                    color: Colors.yellowAccent,
                  ),
                  new MaterialButton(
                    child: Text(
                      "/",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: doDiv,
                    color: Colors.orangeAccent,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
