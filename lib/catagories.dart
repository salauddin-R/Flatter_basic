import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Catagories extends StatelessWidget
{
   final String?Catagories_title;
   final List?image_url;
   final int?item;

  const Catagories({super.key, this.Catagories_title, this.image_url, this.item});
  

  @override
  Widget build(BuildContext context) {
    return      Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  SizedBox(height: 20,),
                  Text(
                    Catagories_title??"NO",
                    style: GoogleFonts.italiana(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height:5,),
                      SizedBox(
                    height: 170,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: item??2,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          height: 160,
                          width: 110,
                          margin: EdgeInsets.only(left: 24),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(image_url![index]),
                            ),
                          ),
                        );
                      },
                      separatorBuilder:(BuildContext context,index){
                        return SizedBox(width: 12,);
                      }
                    ),
                  ),
                 
              ],
              );
            
  }
  
}