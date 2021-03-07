import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';



class PDF extends StatefulWidget {
  final String assetPdf;


  PDF({Key key, this.assetPdf}) : super(key: key);

  @override
  _PDFState createState() => _PDFState();
}

class _PDFState extends State<PDF> {
  bool _isLoading = true;
  PDFDocument doc;

@override
  void initState() {
    super.initState();
    _loadFromAssets();
  }
  void _loadFromAssets() async {
    doc = await PDFDocument.fromAsset(widget.assetPdf);
    setState(() {
      _isLoading = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: _isLoading
                ? CircularProgressIndicator()
                : PDFViewer(
              document: doc,
            ),
      ),
    );
  }
}