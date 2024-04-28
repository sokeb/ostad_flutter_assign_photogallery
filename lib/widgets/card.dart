import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogallery/detailspage.dart';
import 'package:photogallery/widgets/style.dart';

class card extends StatelessWidget {
  final String TitleOfCard;
  final String CardImage;
  final String title;
  final String description;
  const card({
    super.key,
    required this.TitleOfCard,
    required this.CardImage,
    required this.title,
    required this.description

  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailsPage(TitleOfCard: TitleOfCard, CardImage: CardImage, title: title, description: description)));
      },
      child: AspectRatio(
        aspectRatio: 180/180,
        child: Container(
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


          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset( CardImage,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),


              Positioned(
                left: 20,
                right: 0,
                bottom: 15,
                child:  Text(
                  TitleOfCard,
                  style: GoogleFonts.roboto(
                      textStyle: HeadLine()
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


