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
int currentIndex = 0;
final screens = [
  Text("HOME"),
  Text("Habits"),
  addGoalPage()
];
final screenNames = [
  Text("Home"),
  Text("Habits"),
  Text("Add a goal"),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:IndexedStack(
          index: currentIndex,
          children: screenNames,
        ),
        automaticallyImplyLeading: false,
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (index) => setState(
                () => currentIndex = index
        ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.lightBlue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Habits',
              backgroundColor: Colors.lightBlue
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.run_circle_outlined),
              label: 'Goals',
              backgroundColor: Colors.lightBlue
          ),
        ],
      ) ,
    );
}
}