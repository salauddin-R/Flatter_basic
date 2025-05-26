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

  MySnackBar(message,context) {
   return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(message)));
  }
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MyApp"),),
      bottomNavigationBar:BottomNavigationBar(
          currentIndex:0,
          items:const[
        BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon:Icon(Icons.person),label:"Profile"),
        BottomNavigationBarItem(icon:Icon(Icons.email),label:"Email"),

      ],
      onTap: (int index) {
        if (index == 0) {
          MySnackBar("I am home",context);
        }
        else if (index == 1) {
          MySnackBar("I am Profile",context);
        }

        else {
          MySnackBar("I am Email",context);
        }
      }
      ,)
      ,
    );
  }

}
```