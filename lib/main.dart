import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void githubZ() async {
    await FlutterWebBrowser.openWebPage(
      url: "https://github.com/MikiKung",
    );
  }

  void discordZ() async {
    await FlutterWebBrowser.openWebPage(
      url: "https://discordapp.com/users/402319748374724608",
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF5c5c5c),
          body: SingleChildScrollView(
            child: Column(
              children: [
                HeadCV(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.teal,
                        ),
                        child: GestureDetector(
                          onTap: githubZ,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 10, bottom: 10, top: 10),
                                    child: CircleAvatar(
                                      child: Image.asset(
                                        'images/githubLogo.png',
                                      ),
                                      backgroundColor: Colors.teal,
                                      radius: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5),
                                    child: Text(
                                      'GitHub',
                                      style: GoogleFonts.quicksand(
                                        textStyle: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // ใส่buttonอีกอัน
                    ],
                  ),
                ),
                Informations(),
                Contacts(),
                Skills(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Contacts extends StatelessWidget {
  const Contacts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFFF4de8bf),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Contacts",
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 20,
                    color: Colors.green[400],
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text(
                    '094-856-8607',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 20,
                    color: Colors.green[400],
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text(
                    'mikiofficial002@gmail.com',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Icon(
                    Icons.facebook,
                    size: 20,
                    color: Colors.green[400],
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Text(
                    'Peeranut moonrut',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
            ],
          ),
        ),
      ),
    );
  }
}

class Informations extends StatelessWidget {
  const Informations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Informations",
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 20,
                        color: Colors.green[400],
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text(
                        'My name is Peeranut Moonrut',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Icon(
                        Icons.face,
                        size: 20,
                        color: Colors.green[400],
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text(
                        'My nickname is Nut ',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Icon(
                        Icons.cake,
                        size: 20,
                        color: Colors.green[400],
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      Text(
                        '15 February 2001',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Icon(
                        Icons.school,
                        size: 20,
                        color: Colors.green[400],
                      ),
                      Padding(padding: EdgeInsets.only(right: 8)),
                      Text(
                        ' I’m studying in Software Engineering',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Row(
                    children: [
                      Icon(
                        Icons.ac_unit_sharp,
                        color: Colors.green[400],
                        size: 20,
                      ),
                      Padding(padding: EdgeInsets.only(right: 12)),
                      Flexible(
                        child: Text(
                          'I like the rain because it makes me think of someone.',
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.quicksand(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.teal,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Skills',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'HTML',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 60)),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star_half,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'CSS',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 74)),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star_half,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Typescripts',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 19)),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star_half,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'SQL',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 74)),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star_half,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Javascripts',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 19)),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star_half,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Python',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 51)),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star_half,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Flutter',
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 57)),
                              Icon(
                                Icons.star,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star_half,
                                color: Color(0xFF4de8bf),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                              Icon(
                                Icons.star,
                                color: Color(0xFF5c5c5c),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10))
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ส่วนครึ่งบนของ cv (ส่วนสีมิ้น)
class HeadCV extends StatelessWidget {
  const HeadCV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
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
                height: 20,
                child: Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    'my name is nut but you can call me Miki.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.teal,
                      ),
                      height: 20,
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 18,
                            color: Colors.green[400],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                          ),
                          Text(
                            'Phayao',
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.teal,
                      ),
                      height: 20,
                      child: Row(
                        children: [
                          Icon(
                            Icons.computer,
                            size: 18,
                            color: Colors.green[400],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                          ),
                          Text(
                            'Front-end Developer',
                            style: GoogleFonts.quicksand(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
