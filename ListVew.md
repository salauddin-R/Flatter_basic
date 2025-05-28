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
body:ListView(
children: const [
ListTile(
leading: Icon(Icons.start),
title: Text("Item 1"),
subtitle: Text("Subtitle2"),
trailing: Icon(Icons.chevron_left),
),
ListTile(
leading: Icon(Icons.star),
title: Text("Item 1"),
subtitle: Text("Subtitle2"),
trailing: Icon(Icons.chevron_right),
),
ListTile(
leading: Icon(Icons.start),
title: Text("Item 1"),
subtitle: Text("Subtitle2"),
trailing: Icon(Icons.chevron_left),
),
ListTile(
leading: Icon(Icons.start),
title: Text("Item 1"),
subtitle: Text("Subtitle2"),
trailing: Icon(Icons.chevron_left),
),
ListTile(
leading: Icon(Icons.start),
title: Text("Item 1"),
subtitle: Text("Subtitle2"),
trailing: Icon(Icons.chevron_left),
),
ListTile(
leading: Icon(Icons.start),
title: Text("Item 1"),
subtitle: Text("Subtitle2"),
trailing: Icon(Icons.chevron_left),
),
],
),
);
}

}
```