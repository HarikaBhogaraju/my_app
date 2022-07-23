import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

class addGoalPage extends StatefulWidget {
  const addGoalPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _addGoalPageState createState() => _addGoalPageState();
}


class _addGoalPageState extends State<addGoalPage> {
  String selectedValueCategory = "Physical health";
  List<DropdownMenuItem<String>> menuItemsCategory = [
    DropdownMenuItem(child: Text("Mental health"),value: "Mental health"),
    DropdownMenuItem(child: Text("Physical health"),value: "Physical health"),
    DropdownMenuItem(child: Text("Academic"),value: "Academic"),
    DropdownMenuItem(child: Text("Other"),value: "Other"),
  ];

  String selectedValueRepeat = "Daily";
  List<DropdownMenuItem<String>> menuItemsRepeat = [
    DropdownMenuItem(child: Text("Daily"),value: "Daily"),
    DropdownMenuItem(child: Text("Weekly"),value: "Weekly"),
    DropdownMenuItem(child: Text("Biweekly"),value: "Biweekly"),
    DropdownMenuItem(child: Text("Monthly"),value: "Monthly"),
    DropdownMenuItem(child: Text("Custom"),value: "Custom"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Add a new goal',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Add a new goal'),
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  const Padding(
                    padding:EdgeInsets.all(3.0) ,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name of goal',
                      ),
                    ),
                  ),
                  const Padding(
                    padding:EdgeInsets.all(3.0) ,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Description of goal',
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(3.0),
                  child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),

                      value: selectedValueCategory,
                      onChanged: (String newValue) {
                        setState(() {
                          selectedValueCategory = newValue;
                        });
                      },
                      items: menuItemsCategory),
                      ),
                      Padding(padding: EdgeInsets.all(3.0),
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),

                      value: selectedValueRepeat,
                      onChanged: (String newValue) {
                        setState(() {
                          selectedValueRepeat = newValue;
                        });
                      },
                      items: menuItemsRepeat),
                      ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(onSurface: Colors.lightBlue),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Homepage()),
                      );
                    },
                    child: const Text('Submit'),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }

}
