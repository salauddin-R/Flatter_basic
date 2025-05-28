```dart

import 'package:flutter/material.dart';


void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor:Colors.white ),
     home: const HomeActivity(),
    );
  }

}
class HomeActivity extends StatelessWidget
{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MyApp"),),
      body:const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Icon(Icons.account_balance),
          Icon(Icons.add_a_photo),
          Icon(Icons.add),
          Icon(Icons.add_alert),
        ],
      )
    );
  }

}
```