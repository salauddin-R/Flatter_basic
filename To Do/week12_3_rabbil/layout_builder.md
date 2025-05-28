```dart

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
      body: LayoutBuilder(builder:(BuildContext context,BoxConstraints constraints){
        if(constraints.maxWidth>600){
          return Container(
            height: 400,width: 300,color: Colors.pink,
          );
        }
        else{
          return Container(
            height: 400,width: 300,color: Colors.amber,
          );
        }
      }),
    );
  }
  
}
```