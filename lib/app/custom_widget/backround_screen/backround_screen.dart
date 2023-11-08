
import 'package:flutter/material.dart';

class BackroundScreen extends StatelessWidget {
  final BackroundColor;
  final body;

  const BackroundScreen({super.key, this.body, this.BackroundColor});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: BackroundColor,
      body: body,
    );
  }
}
