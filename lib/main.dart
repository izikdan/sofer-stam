import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'SecondPage.dart';
import 'texts.dart';
import 'linkImages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'סופר סת"ם',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> refreshData() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {});
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) => const MyHomePage(title: '',

                )),(route)=> true );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double titleFontSize;
    double subtitleFontSize;
    if (screenWidth < 600) {
      titleFontSize = screenWidth * 0.065;
      subtitleFontSize = screenWidth * 0.05;
    } else {
      titleFontSize = screenWidth * 0.04;
      subtitleFontSize = screenWidth * 0.03;
    }
    return Scaffold(
      body: RefreshIndicator(
          onRefresh: refreshData,
          child: Stack(children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  './assets/writer.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'ברוכים הבאים',
                        style: TextStyle(
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'יצחק דניאל סופר סת"ם מומחה\n מבצע עבודות אומנות בקלף\n כתיבת ספרי תורה, תפילין, מזוזות, ומגילות',
                        style: TextStyle(fontSize: subtitleFontSize),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                toolbarHeight: 250,
              ),
              Expanded(
                  child:  Center(
                     child:
                 SingleChildScrollView(
                 child:  Column(children: [
                     Wrap(
                  alignment: WrapAlignment.center,
                  runSpacing: 10,
                  spacing: 10,
                  children: List.generate(
                    texts.length,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondPage(
                                imageUrl: photos[index],
                                text: texts[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                            margin: const EdgeInsets.all(2),
                            width: 230,
                            height: 250,
                            color: const Color.fromARGB(80, 72, 22, 81),
                            child:
                                Row(children: [
                                  Expanded(
                                    child: Text(
                                      texts[index],
                                      textAlign: TextAlign.center,
                                      textDirection: TextDirection.rtl,
                                      style: const TextStyle(
                                          color:
                                              Color.fromARGB(255, 55, 57, 100),
                                          fontSize: 16),
                                    ),
                                  )
                                ]),
                                
                              
                            ),
                      );
                    },
                  ),
                ),const Text(
      '?רוצים לתת מתנה יחודית לבן/בת הזוג \n ?רוצים להפתיע את יקירכם במתנה יחודית \n ?יש לכם רעיון לברכה יחודית \n .אצלי ניתן להזמין כל דבר על קלף בכתיבת ספר תורה \n .שירות אדיב, מחירים טובים \n צרו קשר בטלפון או בווצאפ',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color.fromARGB(255, 55, 57, 100),
        fontSize: 25,
      ),
    ),],)),
                
            )),
            ]),
          ])),
      bottomNavigationBar: BottomAppBar(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {
              _launchURL('tel: 0507444406');
            },
            icon: const Icon(FontAwesomeIcons.phone),
            tooltip: '0507444406',
          ),
          IconButton(
            onPressed: () {
              _launchURL('https://wa.me/+972507444406');
            },
            icon: const Icon(FontAwesomeIcons.whatsapp),
            color: const Color(0xFF25D366),
          ),
        ]),
      ),
    );
  }
}
