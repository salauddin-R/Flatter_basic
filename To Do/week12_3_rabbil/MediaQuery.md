```dart

import 'package:flutter/material.dart';

import 'style.dart';

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
      body: Text("Salauddin",style: HeadLine(context),),
    );
  }
  
}
```
```dart


import 'package:flutter/material.dart';

TextStyle HeadLine(context) {
  var width=MediaQuery.of(context).size.width;
  if(width<700){
    return  TextStyle(
      color:Colors.black,
      fontSize: 44,fontWeight:FontWeight.w700,
    );
  }
  else if(width>700 && width<900){
    return  TextStyle(
      color:Colors.orange,
      fontSize: 80,fontWeight:FontWeight.w700,
    );
  }
  else
    {
      return  TextStyle(
        color:Colors.cyan,
        fontSize: 44,fontWeight:FontWeight.w700,
      );
    }

}



```