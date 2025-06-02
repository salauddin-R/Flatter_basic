```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  MySnackBar(BuildContext context, message) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    List part1 = [
      "assets/image/spark.png",
      "assets/image/clutch_shoe.png",
      "assets/image/hose_Fuel.png",
    ];
    List part1_text = ["Spark plug", "Clutch shoe", "hose Fuel"];
    List part2 = [
      "assets/image/Tire.png",
      "assets/image/Teflon_Coating.png",
      "assets/image/Annual_Maintenance.png",
      "assets/image/break.png",
    ];
    List part2_text = [
      "Annual_Maintenance",
      "Teflon_Coating",
      "Annual_Maintenance",
      "Teflon_Coating",
    ];
    List price = ["\$ 900", "\$ 1350", "\$ 900", "\$ 1350"];
    List offer = ["\$1000", "\$1500", "\$1000", "\$1500"];
    List off = ["10% off", "10% off", "10% off", "10% off"];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo,
        title: Text(
          "Care",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar(context, "This is search button");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MySnackBar(context, "This is search shopping_cart");
            },
            icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: () {
              MySnackBar(context, "This is search favorite_border");
            },
            icon: Icon(Icons.favorite_border),
          ),
        ],
      ),
      drawer: Drawer(
        width: 350,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              color: Colors.orange,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage("assets/image/rony.png"),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Salauddin",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "example@email.com",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 1"),
              subtitle: Text("Subtitle 1"),
              trailing: Icon(Icons.chevron_left),
              onTap: () {
                MySnackBar(context, "Item 1");
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Item 2"),
              subtitle: Text("Subtitle 2"),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                MySnackBar(context, "Item 2");
              },
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 3"),
              subtitle: Text("Subtitle 3"),
              trailing: Icon(Icons.chevron_left),
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 4"),
              subtitle: Text("Subtitle 4"),
              trailing: Icon(Icons.chevron_left),
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 5"),
              subtitle: Text("Subtitle 5"),
              trailing: Icon(Icons.chevron_left),
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 6"),
              subtitle: Text("Subtitle 6"),
              trailing: Icon(Icons.chevron_left),
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 7"),
              subtitle: Text("Subtitle 7"),
              trailing: Icon(Icons.chevron_left),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Item 8"),
              subtitle: Text("Subtitle 8"),
              trailing: Icon(Icons.chevron_right),
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 9"),
              subtitle: Text("Subtitle 9"),
              trailing: Icon(Icons.chevron_left),
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 10"),
              subtitle: Text("Subtitle 10"),
              trailing: Icon(Icons.chevron_left),
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 11"),
              subtitle: Text("Subtitle 11"),
              trailing: Icon(Icons.chevron_left),
            ),
            ListTile(
              leading: Icon(Icons.start),
              title: Text("Item 12"),
              subtitle: Text("Subtitle 12"),
              trailing: Icon(Icons.chevron_left),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bike Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),

                Text(
                  "Change",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Care Recommendations",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),

                Text(
                  "View all>",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
               // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 7,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: (MediaQuery.of(context).size.width / 3) - 24,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(part1[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Spark Plug",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(width: 15);
                },
                itemCount: 3,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Buy Service Packages",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),

                Text(
                  "View all>",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: part2.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 11,
                  mainAxisSpacing: 11,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 173,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 11,
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                            image: DecorationImage(
                              image: AssetImage(part2[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                part2_text[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 7),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    price[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                    ),
                                  ),

                                  Text(
                                    offer[index],
                                    style: TextStyle(
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Text(
                                    "10%Off",
                                    style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        backgroundColor: Colors.indigo,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Products"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Care"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Shop",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: "Community"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar(context, "This is Home");
          } else if (index == 1) {
            MySnackBar(context, "This is Product");
          } else if (index == 2) {
            MySnackBar(context, "This is Care");
          } else if (index == 3) {
            MySnackBar(context, "This is Shop");
          } else if (index == 4) {
            MySnackBar(context, "This is Community");
          }
        },
      ),
    );
  }
}

```