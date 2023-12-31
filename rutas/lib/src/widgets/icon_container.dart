import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final String url;
  const IconContainer({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220.0,
      width: 200.0,
      child: CircleAvatar(
        radius: 100.0,
        backgroundColor: Colors.amberAccent,
        backgroundImage: AssetImage(this.url),
      ),
    );
  }
}
