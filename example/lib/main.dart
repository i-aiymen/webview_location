import 'package:flutter/material.dart';
import 'package:webview_location/webview_location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Webview Location Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Webview Location Example'),
        ),
        body: const ShowLocationInWebview(
          locationName: 'Yonago Station',
        ),
      ),
    );
  }
}
