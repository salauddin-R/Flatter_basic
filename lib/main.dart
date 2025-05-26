import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vsfirst_app/catagories.dart';

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
 
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
     List <String> imag=["lib/assets/images/wallpaperflare.com_wallpaper.png",
     "lib/assets/images/wallpaperflare.com_wallpaper (6).png","lib/assets/images/wallpaperflare.com_wallpaper (3).png"
     ,"lib/assets/images/wallpaperflare.com_wallpaper (5).png"
     ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,

        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "lib/assets/images/wallpaperflare.com_wallpaper (6).png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
          
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 20,
                            width: 30,
                            margin: EdgeInsets.only(left: 24),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/assets/images/Menu.png"),
                              ),
                            ),
                          ),
                          Text(
                            "Watch Animia",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 30,
                            margin: EdgeInsets.only(right: 43),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("lib/assets/images/Vector.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            "AYANO",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 83,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 75,
                              width: 75,
                              margin: EdgeInsets.only(left: 17),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "lib/assets/images/Play btn@2x.png",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              "Adventure . romantic",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              height: 20,
                              width: 30,
                              margin: EdgeInsets.only(right: 37),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "lib/assets/images/ant-design_info-circle-outlined.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
         Catagories(
          Catagories_title: "Top 10 Movies",
          image_url: imag,
          item: imag.length,
         ),
         Catagories(
          Catagories_title: "Best Movies",
          image_url: imag,
          item: imag.length,
         ),
         
         ],
          ),
        ),
      ),
    );
  }
}
