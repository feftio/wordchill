import 'package:flutter/material.dart';
import 'package:wordchill/auth/auth.dart';
import 'package:wordchill/codenames/card_grid.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WordChill',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Codenames'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  final Auth auth = Auth();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    print(widget.auth.signInAnonymously());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardGrid(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(widget.auth.currentUser);
        },
        tooltip: 'Increment',
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}
