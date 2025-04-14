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
      drawer: Drawer(
        child: ListView(
          children:[
            DrawerHeader(
              padding: const EdgeInsets.all(3),
              child: UserAccountsDrawerHeader(
                currentAccountPicture: Image.network("https://cdn.pixabay.com/photo/2022/03/27/11/23/cat-7094808_640.jpg"),
                  accountName: const Text("md salauddin"),
                  accountEmail: const Text("mdsalauddinroy29@gmail.com")),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap:(){
                MySnackBar("I am home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Person"),
              onTap:(){
                MySnackBar("I am person", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("email"),
              onTap:(){
                MySnackBar("I am email", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_alert),
              title: const Text("add_alert"),
              onTap:(){
                MySnackBar("I am add_alert", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("add"),
              onTap:(){
                MySnackBar("I am add", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.dangerous),
              title: const Text("dangerous"),
              onTap:(){
                MySnackBar("I am dangerous", context);
              },
            ),
          ],
        ),
      ),
    );
  }

}
```