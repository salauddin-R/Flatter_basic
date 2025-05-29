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
class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage>{
  int number=0;
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("Salahuddin"),),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Counter APP",
             style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),),
           Text("$number",
             style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),),
         ],

       ),
     ),
     floatingActionButton: FloatingActionButton(onPressed: () {
       setState(() {
         number++;
       });
     },
       child: Icon(Icons.add),
   ),);

 }
}


```