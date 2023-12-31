import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Material App Bar'),
      // ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 120),
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/ic_launcher.png'))),
              ),
              Container(
                width: 220,
                child: Text(
                  'Get Safe Payment With Us',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Roboto Bold', fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 285,
                child: Text(
                  'We Have Serve best And Fast Payment Service In India',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                width: 250,
                height: 50,
                margin: EdgeInsets.only(top: 250),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/LoginScreen');
                  },
                  child: Text(
                    'Explore Collection',
                    style: TextStyle(
                        fontFamily: 'roboto',
                        color: Colors.black87,
                        fontSize: 15),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
