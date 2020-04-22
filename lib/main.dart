import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 2), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 7),
            Text(
              'Made With',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0,
                  wordSpacing: 2.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(width: 7),
            Icon(Icons.favorite, color: Colors.pinkAccent),
            SizedBox(width: 7),
            Text(
              'Flutter',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20.0,
                  wordSpacing: 2.0,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-count',
      theme: ThemeData.dark(),
      home: MyHomePage(title: 'countries'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSearching = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 100.0,
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10.0,
            borderOnForeground: true,
            color: Colors.grey,
            child: Column(
              children: [
                Text('Covid 19'),
                Image.network(
                    'https://images.squarespace-cdn.com/content/v1/57ab56e446c3c4f0bc870a87/1584633499263-D5S2WHTJ6ENY89J0M8BV/ke17ZwdGBToddI8pDm48kEWP3-hvREnweJ050wvhyvB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UZ8v_8xPaFXnubzXJlS3wYyrY1kxbt3bHny-yDezekUcm4bjm9DAHF2kOsIZRJKXnA/COVID-19+Navigation+Tiles-01.png?format=1500w')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              color: Colors.grey,
              width: 50.0,
              height: 10.0,
            ),
          ),
          SnackBar(
            content: Text('Swipe up'),
          )
        ],
      ),
    );
  }
}
