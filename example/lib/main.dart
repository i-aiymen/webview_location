import 'package:flutter/material.dart';
import 'package:webview_location/webview_location.dart';

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

class ShowLocation extends StatelessWidget {
  const ShowLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webview Location Example'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ViewLocation(),
            ),
          );
        },
        child: const Text('Show Location in Webview'),
      )),
    );
  }
}

class ViewLocation extends StatelessWidget {
  const ViewLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('View Location'),
        ),
        body: const ShowLocationInWebview(
          locationName: 'Yonago, Tottori, Japan',
        ));
  }
}
