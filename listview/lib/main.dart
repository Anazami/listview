import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Sidemenu'),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Arsene'),
              accountEmail: new Text('a.niyodushi@alueducation.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('https://i.pravatar.cc/300'),
              ),
            ),
            new ListTile(
              leading: Icon(Icons.book),
              title: new Text('About Page'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push;
              },
            ),
            new ListTile(
              leading: Icon(Icons.settings),
              title: new Text('Settings'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push;
              },
            ),
            new ListTile(
              leading: Icon(Icons.logout),
              title: new Text('Logout'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push;
              },
            )
          ],
        ),
      ),
    );
  }
}
