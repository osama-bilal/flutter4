
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Osama bilal'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: const Icon(Icons.arrow_back_outlined),
        actions: [const Icon(Icons.info_outline), const Icon(Icons.more_vert)],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.deepPurpleAccent,
              margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              // height: ,
              child: const Text(
                "material app",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              color: Colors.deepPurpleAccent.shade100,
              height: MediaQuery.of(context).size.height - 180,
              margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              alignment: Alignment.center,
              padding: EdgeInsets.all(20),
              child: Text(
                "My name is osama, I'm a student of the University of science & technology",
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
    );
  }
}
