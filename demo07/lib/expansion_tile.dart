import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  const ExpansionTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("expansion title demo"),
      ),
      body: Center(
        child: ExpansionTile(
          title: Text("Expansion Title"),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: [
            ListTile(
              title: Text("list title"),
              subtitle: Text("subtitle"),
            )
          ],
          initiallyExpanded: true,
        ),
      ),
    );
  }
}
