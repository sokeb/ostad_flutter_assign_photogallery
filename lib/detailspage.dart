import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogallery/widgets/backbutton.dart';
import 'package:photogallery/widgets/detailspagefor_landscape.dart';
import 'package:photogallery/widgets/detailspagefor_portrait.dart';
import 'package:photogallery/widgets/style.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'widgets/card.dart';
import 'widgets/ImageOfdetailspage.dart';

class DetailsPage extends StatelessWidget {
  final String TitleOfCard;
  final String CardImage;
  final String title;
  final String description;
  const DetailsPage({
    super.key,
    required this.TitleOfCard,
    required this.CardImage,
    required this.title,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const ButtonOfBack(),
          backgroundColor: const  Color(0xff2CAB00),
        title: Center(child: Text(
          TitleOfCard,
          style: GoogleFonts.poppins(
              textStyle: HeadLine()
          ),
        ),),
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert, color: Color(0xffFAFAFA)))
        ],

      ),

      body: OrientationBuilder(builder: (context, orientation){
        if(orientation == Orientation.landscape){
          return Center(
            child: DetailsPageForLandscape(TitleOfCard: TitleOfCard, CardImage: CardImage, title: title, description: description),
          );
        }else{
          return DetailsPageForPortrait(TitleofCard: TitleOfCard, CardImage: CardImage, title: title, description: description);
        }
      }),
    );
  }
}

