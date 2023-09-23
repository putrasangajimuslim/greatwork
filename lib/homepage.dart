import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF166684),
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          ClipPath(
            child: Container(
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
