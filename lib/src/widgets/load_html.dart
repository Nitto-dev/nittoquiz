// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
//
// class WebViewLoad extends StatefulWidget {
//
//   final String assetHTML;
//
//   const WebViewLoad({Key key, this.assetHTML}) : super(key: key);
//
//
//   WebViewLoadUI createState() => WebViewLoadUI();
//
// }
//
// class WebViewLoadUI extends State<WebViewLoad>{
//
//   InAppWebViewController webView;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //appBar: AppBar(title: Text('')),
//       body:InAppWebView(
//         //initialUrl: "https://flutter.dev/",
//         initialHeaders: {},
//         initialFile: widget.assetHTML,
//         //'assets/Fivesalah.html',
//         initialOptions: InAppWebViewGroupOptions(
//             crossPlatform: InAppWebViewOptions(
//               debuggingEnabled: true,
//             )
//         ),
//
//         onWebViewCreated: (InAppWebViewController controller) {
//           webView = controller;
//           //loadLocalHTML();
//         },
//         // onLoadStart: (InAppWebViewController controller, String url) {
//         //   setState(() {
//         //     this.url = url;
//         //   });
//         // },
//         // onLoadStop: (InAppWebViewController controller, String url) async {
//         //   setState(() {
//         //     this.url = url;
//         //   });
//         // },
//         // onProgressChanged: (InAppWebViewController controller, int progress) {
//         //   setState(() {
//         //     this.progress = progress / 100;
//         //   });
//         // },
//       ),
//
//
//     );
//   }
// }