import 'dart:ui';

import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation:0
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image_01.png"),
            fit: BoxFit.fitHeight,
            alignment: Alignment.center,
          )
        ),
        child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4, sigmaY: 4
            ),
            child: Center(
              child: Text("... She said last time, we're stuck in a time loop \n which really pissed me off because that's what...", textAlign: TextAlign.center ,
                style:TextStyle(
                  fontSize: 25,
                fontFamily: "GrapeNuts",
                color: Colors.white
              ),
              ),
            ),
          ),
        ),
      );
  }
}