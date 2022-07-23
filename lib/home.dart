import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/addGoal.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View goals'),
        automaticallyImplyLeading: false,
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(padding: EdgeInsets.all(16.0),
          child: Text(
            'Hello Home!',
            style: TextStyle(fontSize: 34, color: Colors.black),
          ),
        )
      ],
    ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const addGoalPage()));
        },
        label: const Text('Add a goal'),
        icon: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
}
}