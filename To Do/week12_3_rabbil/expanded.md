```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
  
}
class HomePage extends StatelessWidget
    
{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Row(
        children: [
          Expanded(flex:25,child: Container(
            color: Colors.amber,
          )),
          Expanded(flex:25,child: Container(
            color: Colors.black,
          )),
          Expanded(flex:25,child: Container(
            color: Colors.black12,
          )),
          Expanded(flex:25,child: Container(
            color: Colors.blue,
          )),
          Expanded(flex:25,child: Container(
            color: Colors.white,
          )),
          Expanded(flex:25,child: Container(
            color: Colors.pink,
          )),
        ],
      ),
    );
  }
  
}
```