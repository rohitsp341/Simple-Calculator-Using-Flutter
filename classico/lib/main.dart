import "package:flutter/material.dart";
import 'dart:ui' show lerpDouble;

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: myapp(),
  ));
}

// stful
class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  TextEditingController controller1 =
      TextEditingController(); //Yes, creating a TextEditingController (or any other controller in Flutter) is similar to creating an object of a class. In fact, TextEditingController is a class provided by the Flutter framework for managing text input in TextField widgets
  TextEditingController controller2 = TextEditingController();
  int? result = 0, num1 = 0, num2 = 0;
  add() {
    setState(() {
      //: setState used to update the user interface
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }

  sub() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }

  mul() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }

  div() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);

      if (num2 != 0) {
        result = num1! ~/ num2!;
      } else {
        result = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Simple  Calculator. "),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text(
            "Result :$result",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller1,
            decoration: InputDecoration(
                labelText: "Enter First Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: controller2,
            decoration: InputDecoration(
                labelText: "Enter Second  Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    add();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text("Add")),
              ElevatedButton(
                  onPressed: () {
                    sub();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text("Sub")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    mul();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text("Mul")),
              ElevatedButton(
                  onPressed: () {
                    div();
                    controller1.clear();
                    controller2.clear();
                  },
                  child: Text("Div")),
            ],
          ),
        ],
      ),
    ); // scannolf return this
  }
}
