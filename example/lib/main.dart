import 'package:flutter/material.dart';

import 'show_location/show_location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Webview Location Example',
      home: ShowLocation(),
    );
  }
}
