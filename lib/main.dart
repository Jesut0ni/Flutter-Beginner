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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _incrementCounter,
          ),
          IconButton(
            onPressed: _decrementCounter,
            icon: const Icon(
              Icons.minimize,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cancel,
            ),
          )
        ],
        title: Text('$_counter'),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/pdfs/svgs/images/dash.jpg',
            ),
          ),
          const Text(
            'Hello World',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              Text(
                'Like',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

   // Center(
  //         child: Container(
  //             // height: 100,
  //             // width: 100,
  //             padding: const EdgeInsets.all(10), //(internal space)
  //             margin: const EdgeInsets.all(50), //(external space)
  //             alignment: Alignment.center,
  //             decoration: const BoxDecoration(
  //               // borderRadius: BorderRadius.circular(20),
  //               color: Colors.black,
  //               border: Border(
  //                 bottom: BorderSide(
  //                   color: Colors.green,
  //                   width: 2,
  //                 ),
  //                 left: BorderSide(
  //                   color: Colors.green,
  //                   width: 2,
  //                 ),
  //                 top: BorderSide(
  //                   color: Colors.green,
  //                   width: 2,
  //                 ),
  //               ),
  //             ),
  //             child: Image.asset(
  //               'assets/pdfs/svgs/images/dash.jpg',
  //             ))
  //         //  const Text(
  //         //   'Aptlearn is the best...',
  //         //   style: TextStyle(
  //         //     color: Colors.white,
  //         //     fontSize: 20,
  //         //     fontWeight: FontWeight.w900,
  //         //     fontFamily: 'Nunito',
  //         //   ),
  //         // ),

  //         ), 
  //   );
  // }
  //   );
  // },