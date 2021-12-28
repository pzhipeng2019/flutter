import 'package:flutter/material.dart';

class AdBanner extends StatelessWidget {
  final String advertesPicture;
  const AdBanner({Key? key, required this.advertesPicture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        advertesPicture,
      ),
    );
  }
}
