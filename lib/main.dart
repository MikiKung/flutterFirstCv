import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF5c5c5c),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Color(0xFF4de8bf),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 50,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/nerdBoy.png"),
                      radius: 48,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Miki',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Container(
                      width: 280,
                      height: 20,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'my name is nut but you can call me Miki',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 1, color: Colors.white),
                      ),
                    )
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Icon(
                    //       Icons.book,
                    //       color: Colors.green[500],
                    //       size: 20,
                    //     ),
                    //     Text(
                    //       ' Software Engineering',
                    //     ),
                    //   ],
                    // )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
