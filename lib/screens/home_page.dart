import 'package:flutter/material.dart';

import 'generate_page.dart';
import 'scan_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("QR CODE"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                'assets/qr-code.png',
                height: 170.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Scanneur et générateur de QR Code ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontSize: 14.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ScanPage();
                    }));
                  },
                  child: Text(
                    "Scanner un QR Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 14.0,
                    ),
                  ),
                  color: Colors.red,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return GeneratePage();
                    }));
                  },
                  child: Text(
                    "Générer un QR Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontSize: 14.0,
                    ),
                  ),
                  color: Colors.deepPurpleAccent,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'By Niaina Mahefa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white30,
                    fontFamily: 'OpenSans',
                    fontSize: 14.0,
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
