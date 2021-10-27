import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'responsive_cards.dart';

void main() {
  runApp(MainResponsiveCards());
}

class MainResponsiveCards extends StatelessWidget {
  const MainResponsiveCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ResponsiveCards(),
    );
  }
}
