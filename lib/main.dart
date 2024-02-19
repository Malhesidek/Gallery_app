import 'package:flutter/material.dart';
import 'package:gallery_app/imageSwitch.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
      title: 'Gallery app',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          bottomOpacity: 1.0,
          title: const Text(
            'Gallery App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          child: ImageSwitch(),
        ),
      )));
}


// Center(
//               child: Text(
//             'Gallery',
//             // style: GoogleFonts.roboto(color: Colors.black)
//             style: TextStyle(color: Colors.black, fontSize: 20),
//           ))