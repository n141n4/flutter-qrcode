import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GeneratePage extends StatefulWidget {
  @override
  _GeneratePage createState() => _GeneratePage();
}

class _GeneratePage extends State<GeneratePage> {
  String qrData = "QR CODE Scanneur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Générer QR CODE"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            QrImage(
              backgroundColor: Colors.white,
              data: qrData,
              size: 188,
            ),
            SizedBox(height: 7.0),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: qrText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  alignLabelWithHint: false,
                  hintText: 'Nom du QR code',
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    onPressed: () {
                      // generate qr code
                      if (qrText.text.isEmpty) {
                        _showDialog(context);
                      } else {
                        setState(() {
                          qrData = qrText.text;
                        });
                      }
                    },
                    child: Text(
                      "Générer le QR Code",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 14.0,
                      ),
                    ),
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}

void _showDialog(BuildContext context) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: new Text("Message"),
        content: new Text("Veuillez insérer un nom pour le QR Code"),
        actions: <Widget>[
          new FlatButton(
            child: new Text("Fermer"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
