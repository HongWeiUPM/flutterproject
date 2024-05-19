import 'package:flutter/material.dart';

class Factory2Page extends StatelessWidget {
  const Factory2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory 2'),
      ),
      body: const Center(
        child: Text('This is Factory 2 page.'),
      ),
    );
  }
}
