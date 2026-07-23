import 'package:flutter/material.dart';

/// Non-web stand-in for the web-only embed screen, which relies on
/// `dart:js_interop` and is compiled only for web builds.
class EmbedScreen extends StatelessWidget {
  const EmbedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Embedding is available on web only.')),
    );
  }
}
