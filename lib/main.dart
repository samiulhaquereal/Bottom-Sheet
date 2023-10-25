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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: () {
            showModalBottomSheet(context: context,
                builder: (BuildContext context){
              return SizedBox(
                height: 400,
                child: Center(
                  child: ElevatedButton(onPressed: () {
                    Navigator.pop(context);},
                    child: Text('Close'),
                  ),
                ),
              );
            }
            );
          }, child: Text('Click'),),
        ),
      ),
    );
  }
}

