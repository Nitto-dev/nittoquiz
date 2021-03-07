import 'package:flutter/material.dart';
import 'package:nittoquiz/src/widgets/custom_list.dart';
import 'package:nittoquiz/src/widgets/pdfviewer.dart';
class KnowledgePage extends StatefulWidget {
  @override
  _KnowledgePageState createState() => _KnowledgePageState();
}

class _KnowledgePageState extends State<KnowledgePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Knowledge'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          //CustomList("Step by Step Salah", "Learn details by Taping this", ()=>WebViewLoad(assetHTML:'assets/Fivesalah.html')),
          CustomList("Scrum-Guide", "Learn details by Taping this", ()=> PDF(assetPdf: "assets/2020-Scrum-Guide-US.pdf",)),
        ],
      )
    );
  }
}
