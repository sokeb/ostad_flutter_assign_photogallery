import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogallery/widgets/style.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'ImageOfdetailspage.dart';
import 'card.dart';

class DetailsPageForPortrait extends StatelessWidget {
  final String TitleofCard;
  final String CardImage;
  final String title;
  final String description;
  const DetailsPageForPortrait({
    super.key,
    required this.TitleofCard,
    required this.CardImage,
    required this.title,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
              xs: 12, sm: 12, md: 12, lg: 12,xl: 12,
              child: ImageOfDetails(TitleOfCard: TitleofCard,CardImage: CardImage,)),

          ResponsiveGridCol(
              xs: 12, sm: 12, md: 12, lg: 12,xl: 12,
              child: Container(
                alignment: Alignment.centerLeft,
                width: 300,
                margin:const EdgeInsets.only(
                    top: 10,
                    left: 20,
                    right: 20
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Colors.black, fontSize: 24))),
                    const SizedBox(height: 10),
                    Wrap(
                      children: [
                        Text(description, style: GoogleFonts.poppins(
                            textStyle: const TextStyle(color: Colors.black, fontSize: 15)))
                      ],
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: AspectRatio(
                        aspectRatio: 482/51,
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x80000000),
                                offset: Offset(0, 11),
                                blurRadius: 30,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff2CAB00),
                            ),
                            child: Text("See More", style: GoogleFonts.poppins(
                                textStyle: HeadLine()
                            ),),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Text("Suggestion", style: GoogleFonts.poppins(
                        textStyle: const TextStyle(color: Color(0xff2CAB00), fontSize: 24,))),
                    const SizedBox(height: 5,),
                    ResponsiveGridRow(children: [
                      ResponsiveGridCol(
                          xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                          child: const card(TitleOfCard: 'Dawn', CardImage: 'assets/images/dawn.jpg', title: "Twilight Time of Day", description: "Dawn is the time that marks the beginning of twilight before sunrise. It is recognized by the appearance of indirect sunlight being scattered in Earth's atmosphere, when the centre of the Sun's disc has reached 18° below the observer's horizon")),
                      ResponsiveGridCol(
                          xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                          child: const card(TitleOfCard: 'leaves', CardImage: 'assets/images/leaves.jpg', title: "Just leaves", description: "A flattened structure of a higher plant, typically green and blade-like, that is attached to a stem directly or via a stalk. Leaves are the main organs of photosynthesis and transpiration."))
                    ],)
                  ],
                ),
              ))
        ],
      ),
    );
  }
}