import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Portfolio'),
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
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 61, 61),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 50, bottom: 0, left: 0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              child: const Text('Top'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 50, bottom: 0, left: 0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('About'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 50, bottom: 0, left: 0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Portfolio'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, right: 100, bottom: 0, left: 0),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: const Text('Contact'),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            // color: const Color.fromARGB(255, 0, 0, 0),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 0, right: 0, bottom: 0, left: 200),
              child: Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Positioned(
                    top: -30 - 180,
                    left: 350.0,
                    width: 900,
                    height: 800,
                    child: Image.asset(
                        '/Users/nagainagai/portfolio/images/img.jpg'),
                  ),
                  Positioned(
                    top: 10.0 - 180,
                    left: 300.0,
                    width: 900,
                    height: 800,
                    child: Image.asset(
                        '/Users/nagainagai/portfolio/images/img.jpg'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 128,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Design',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 128,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Portfolio',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 128,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
