import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogallery/widgets/style.dart';

class ImageOfDetails extends StatelessWidget {
  final String TitleOfCard;
  final String CardImage;

  const ImageOfDetails({
    super.key,
    required this.TitleOfCard,
    required this.CardImage,


  });

  @override
  Widget build(BuildContext context) {

    return AspectRatio(
      aspectRatio: 390/325,
      child: Container(
        //width: 350,
        //height: 298,
        margin:const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x80000000),
              offset: Offset(0, 15),
              blurRadius: 30,
              spreadRadius: 0,
            ),
          ],
        ),


        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset( CardImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


