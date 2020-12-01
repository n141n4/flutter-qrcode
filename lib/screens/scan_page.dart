import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanPage extends StatefulWidget {
  @override
  _ScanPageState createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String qrResult = "Aucun QR Code scanné";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Scanner un QR CODE"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'RESULTAT',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.green,
                fontFamily: 'OpenSans',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              qrResult,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white30,
                fontFamily: 'OpenSans',
                fontSize: 12.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: RaisedButton(
                onPressed: () async {
                  String scaning = await BarcodeScanner.scan();
                  setState(() {
                    qrResult = scaning;
                  });
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
          ],
        ),
      ),
    );
  }
}
