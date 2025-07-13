import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../views/webview_screen.dart';

class WebViewService {
  static Future<void> openWebView(BuildContext context, String url) async {
    if (kIsWeb) {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url), webOnlyWindowName: '_blank');
      }
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => WebViewScreen(url: url),
        ),
      );
    }
  }
}
