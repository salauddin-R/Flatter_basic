```dart

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

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
      body:ResponsiveGridRow(
        children:[
          ResponsiveGridCol(
            xl: 12,lg:12, md:12, sm:12,
            child: Container(
              height: 100,
              color: Colors.purple,
              child: Text("Salauddin",style: TextStyle(
                fontSize: 40,color: Colors.white,fontWeight: FontWeight.w700,
              ),),
            ),
          ),
          ResponsiveGridCol(
            xl: 3,lg:4, md:6, sm:12,
            child: Container(
              height: 100,
              color: Colors.black,
              child: Text("Rony",style: TextStyle(
                fontSize: 40,color: Colors.white,fontWeight: FontWeight.w700,
              ),),
            ),
          ),
          ResponsiveGridCol(
            xl: 3,lg:4, md:6, sm:12,
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Text("Salauddin",style: TextStyle(
                fontSize: 40,color: Colors.white,fontWeight: FontWeight.w700,
              ),),
            ),
          ),
          ResponsiveGridCol(
            xl: 3,lg:4, md:6, sm:12,
            child: Container(
              height: 100,
              color: Colors.green,
              child: Text("Rony",style: TextStyle(
                fontSize: 40,color: Colors.white,fontWeight: FontWeight.w700,
              ),),
            ),
          ),
          ResponsiveGridCol(
            xl: 3,lg:4, md:6, sm:12,

            child: Container(
              height: 100,
              color: Colors.pink,
              child: Text("Salauddin",style: TextStyle(
                fontSize: 40,color: Colors.white,fontWeight: FontWeight.w700,
              ),),
            ),
          ),
          ResponsiveGridCol(
            xl: 3,lg:4, md:6, sm:12,
            child: Container(
              height: 100,
              color: Colors.amber,
              child: Text("Rony",style: TextStyle(
                fontSize: 40,color: Colors.white,fontWeight: FontWeight.w700,
              ),),
            ),
          ),
          ResponsiveGridCol(
            xl: 3,lg:4, md:6, sm:12,
            child: Container(
              height: 100,
              color: Colors.cyan,
              child: Text("Salauddin",style: TextStyle(
                fontSize: 40,color: Colors.white,fontWeight: FontWeight.w700,
              ),),
            ),
          ),
        ]
      )
    );
  }
  
}
```
```dart
xl=4k
lg=2k
md=1080
sm=tab
xm=mobile


```