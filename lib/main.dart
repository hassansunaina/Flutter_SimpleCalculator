import 'package:flutter/material.dart';

void main() => runApp(new mySimpleCalculator());

class mySimpleCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MySimpleCalulator",
      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget{


  @override
  State<StatefulWidget> createState() => Calculator();
}

class Calculator  extends State<MyCalculator>{

  //Controller for textview and we hae 2

  final controllernumberA = TextEditingController();
  final controllernumberB = TextEditingController();
  final myFormkey = GlobalKey<FormState>();

  String texttoshow = "";

  //function sum

  void sum(){

    if(myFormkey.currentState.validate())

    {
      int numberA = int.parse(controllernumberA.text);
      int numberB = int.parse(controllernumberA.text);
      int result = numberA +numberB;

      setState(() {
        texttoshow = "$numberA + $numberB = $result";

      });
    }
  }
  void minus(){

    if(myFormkey.currentState.validate())

    {
      int numberA = int.parse(controllernumberA.text);
      int numberB = int.parse(controllernumberA.text);
      int result = numberA - numberB;

      setState(() {
        texttoshow = "$numberA - $numberB = $result";

      });
    }
  }

  void multiply(){

    if(myFormkey.currentState.validate())

    {
      int numberA = int.parse(controllernumberA.text);
      int numberB = int.parse(controllernumberA.text);
      int result = numberA * numberB;

      setState(() {
        texttoshow = "$numberA * $numberB = $result";

      });
    }
  }

  void divide(){

    if(myFormkey.currentState.validate())

    {
      int numberA = int.parse(controllernumberA.text);
      int numberB = int.parse(controllernumberA.text);
      double result = numberA / numberB;

      setState(() {
        texttoshow = "$numberA / $numberB = $result";

      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(body: Form(key: myFormkey, child:
    Column(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //create two textview in vertical

        TextFormField(

            controller: controllernumberA,
            validator: (value){
              if(value.isEmpty)

                return "Please Enter Value";
            },

            decoration: InputDecoration(hintText: "Enter Number"),
            keyboardType: TextInputType.number),
        TextFormField(

            controller: controllernumberB,
            validator: (value){
              if(value.isEmpty)

                return "Please Enter Value";
            },

            decoration: InputDecoration(hintText: "Enter Number"),
            keyboardType: TextInputType.number),

        //Result textview
        Text(texttoshow,style:TextStyle(fontSize: 20.0),),
        //create 4 buttons

        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[

          RaisedButton(onPressed: sum ,child: Text("+"),),
          RaisedButton(onPressed: minus ,child: Text("-"),),
          RaisedButton(onPressed: multiply ,child: Text("*"),),
          RaisedButton(onPressed: divide ,child: Text("/"),)

        ],)
      ],
    )
    ));
  }

}
