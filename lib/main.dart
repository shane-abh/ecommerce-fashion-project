import 'package:fashion_ecommerce_project/products_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: _buildTheme(Brightness.light),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Logo', style: TextStyle(color: Colors.white),),
          backgroundColor: Color(0xFF111111),
          centerTitle: true,

      ) ,
        body: Stack(children: [
      Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/main_hero.jpeg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color(0xFF121212).withOpacity(0.2), BlendMode.darken),
            ),
          ),
          child: null),
      Container(
          child: Column(
        children: [
          // Expanded(
          //     flex: 1,
          //     child: Container(
          //       width: double.infinity,
          //       child: Text(
          //         "Container 1",
          //         textAlign: TextAlign.center,
          //         style: TextStyle(color: Colors.white),
          //       ),
          //       decoration: BoxDecoration(color: Colors.black),
          //     )),
          Expanded(
              flex: 5,
              child: Container(
                child: null,
              )),
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Color(0xFF111111).withOpacity(1),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Start Finding Your Version The Best Fashion Style',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Card(
                     color: Colors.transparent,
                      margin: EdgeInsets.all(15),
                      child: Text(
                        'Your appearance shows your quality so give your best for your best fashion',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5), fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style:  ButtonStyle(
                              alignment: Alignment.center,
                              backgroundColor: MaterialStateProperty.all<Color>(Color(int.parse("0xFFFA6E20"))),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProductsPage()),
                              );
                            },
                            child: const Text('Get Started',
                                style: TextStyle(color: Colors.white))))
                  ],
                ),
              ))
        ],
      ))
    ]));
  }
}
