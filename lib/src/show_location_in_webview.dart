import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShowLocationInWebview extends StatelessWidget {
  final String locationName;
  const ShowLocationInWebview({super.key, required this.locationName});

  @override
  Widget build(BuildContext context) {
    WebViewController controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
          'https://www.google.com/maps/search/?api=1&query=$locationName'));
    return WebViewWidget(
      controller: controller,
    );
  }
}
