import 'package:flutter/material.dart';
import 'package:my_app/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(title: 'Title of app'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title of app',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Goal Setting App'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Welcome',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                const Padding(
                  padding:EdgeInsets.all(6.0) ,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),

                const Padding(padding: EdgeInsets.all(6.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(onSurface: Colors.lightBlue),
                  onPressed: (){
                    verify();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  child: const Text('Log in'),
                )
              ],
            ),
          ),
        )
        ),
      );
  }

  verify(){
    //check that username and password match in DB
  }

}
