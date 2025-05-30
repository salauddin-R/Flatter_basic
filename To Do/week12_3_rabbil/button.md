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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}
class HomePage extends StatelessWidget
{
  MySnackBar(context,message){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonstyle=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
        )
    );
    final ButtonStyle buttonstyle2=ElevatedButton.styleFrom(
        padding: EdgeInsets.all(25),
        backgroundColor: const Color.fromARGB(255, 33, 41, 33),
        foregroundColor:Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
        )
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:  Text("MYApp"),
        actions: [
          IconButton(onPressed: (){MySnackBar(context,"This is home Icon");}, icon:Icon(Icons.home)),
          IconButton(onPressed: (){MySnackBar(context,"This is search Icon");}, icon:Icon(Icons.search)),
          IconButton(onPressed: (){MySnackBar(context,"This is add icon");}, icon:Icon(Icons.add)),
        ],
      ),

      body:Column(
        children: [
          SizedBox(height:15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed:(){MySnackBar(context,"This is text button");}, child:Text("TextButton")),
              ElevatedButton(onPressed:(){MySnackBar(context,"This is Elevatedbutton");}, child:Text("Elevatedbutton"),style: buttonstyle,),
              OutlinedButton(onPressed:(){MySnackBar(context,"This is outlinebutton");}, child:Text("outlinebutton"),style: buttonstyle2),

            ],
          ),
        ],
      ) ,

      floatingActionButton: FloatingActionButton(onPressed:(){
        MySnackBar(context,"This is floting action button");},
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: Colors.green,
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon:Icon(Icons.person),label:"Profile"),
          BottomNavigationBarItem(icon:Icon(Icons.inbox),label:"Inbox"),
        ],
        onTap: (int index){
          if(index==0){
            MySnackBar(context,"This is home Page");
          }
          else if(index==1){
            MySnackBar(context,"this is profile");
          }
          else{
            MySnackBar(context,"This is inbox");
          }
        },
      ),
    );
  }

}
```