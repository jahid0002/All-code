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
    super.initState();
    _launchUrl();
  }

// ignore: unused_element
  Future<void> _loadWebData() async {
    const uri = 'https://developer.android.com/develop/connectivity/network-ops/connecting';


    if (await canLaunchUrl(Uri.parse(uri))) {
      await launchUrl(Uri.parse(uri));
    } else {
      throw "can't open browser $uri";
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }


final Uri _url = Uri.parse('https://www.youtube.com/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
