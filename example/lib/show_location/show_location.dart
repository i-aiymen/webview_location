import 'package:flutter/material.dart';
import 'package:webview_location/webview_location.dart';

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
              builder: (context) => const ShowLocationInWebview(
                locationName: 'New York',
              ),
            ),
          );
        },
        child: const Text('Show Location in Webview'),
      )),
    );
  }
}
