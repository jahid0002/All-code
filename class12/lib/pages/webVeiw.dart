import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebVeiwPage extends StatefulWidget {
  const WebVeiwPage({super.key});

  @override
  State<WebVeiwPage> createState() => _WebVeiwPageState();
}

class _WebVeiwPageState extends State<WebVeiwPage> {
  @override
  void initState() {
    _webPage();

    super.initState();
  }

  final Uri _uri = Uri.parse('https://www.youtube.com');

  Future<void> _webPage() async {
    if (!await launchUrl(_uri)) {
      throw Exception("Cant't open brower $_uri");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
