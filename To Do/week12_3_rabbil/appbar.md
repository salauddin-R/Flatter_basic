```dart

import 'dart:js_interop';

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
  MySnackbar(message,context)
  {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text(message))
    );
  }
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar",style: TextStyle(color: Colors.white),),
        titleSpacing: 90,
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation:500 ,
        toolbarOpacity: 1,
        actions: [
          IconButton(onPressed: (){ MySnackbar("message",context,);}, icon: Icon(Icons.comment,color: Colors.white,)),
          IconButton(onPressed: (){ MySnackbar("message",context);}, icon: Icon(Icons.person,color: Colors.white)),
          IconButton(onPressed: (){ MySnackbar("message",context);}, icon: Icon(Icons.home,color: Colors.white)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white)),
        ],
      ),
    );
  }

}
```