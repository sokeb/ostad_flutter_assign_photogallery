import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photogallery/widgets/backbutton.dart';
import 'package:photogallery/widgets/style.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'widgets/card.dart';

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const ButtonOfBack() ,
        backgroundColor: const  Color(0xff2CAB00),
        title: Center(child: Text(
          'Photo Gallery',
          style: GoogleFonts.poppins(
              textStyle: HeadLine()
          ),
        ),),
        actions: [
          IconButton(
              onPressed: (){},

              icon:const Icon(
                  Icons.more_vert,
                  color: Color(0xffFAFAFA)))
        ],

      ),

      body: OrientationBuilder(builder: (context, orientation){
        if(orientation == Orientation.portrait){
          return  SingleChildScrollView(
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(
                        TitleOfCard: 'Mood', CardImage: 'assets/images/card1.jpg', title: 'Mood with nature', description: 'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings ')),
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(TitleOfCard: 'Aesthetic', CardImage: 'assets/images/aesthetic.jpg', title: 'Cycle Chic (A Clothes Horse)', description: "I honestly did not put together this outfit thinking I'll dress like the human version of my bicycle but thats pretty much how it came out! We found my bicycle at an auction that was full of random")),
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(TitleOfCard: 'Animal', CardImage: 'assets/images/Animals.jpg', title: 'Tiger Profile', description: 'Tigers are nocturnal carnivores known for being one of the most iconic, and largest, of the big cats.They live in a diverse range of habitats across Asia, with most being found in India, but also in China, Russia, Thailand and Malaysia.')),
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(TitleOfCard: 'City', CardImage: 'assets/images/City.jpg', title: 'Getting Around in New York City', description: 'Lots of people travel to New York, plop themselves down into Time Square, and never go anywhere else. They seem to fear venturing into neighborhoods that exist for purposes other than tourism.')),
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(TitleOfCard: 'Travel', CardImage: 'assets/images/travel.jpg', title: 'Incredible travel photography', description: 'Being able to capture a moment and look back on it is incredibly powerful. As humans, we are wired to always look forward and continue progressing')),
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(TitleOfCard: 'Sky', CardImage: 'assets/images/sky.jpg', title: 'Starry Night', description: 'Since humans first looked skyward, the night sky has remained virtually unchanged. For ages, people around the globe have found the heavens a source of inspiration for stories and art')),
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(TitleOfCard: 'Road', CardImage: 'assets/images/road.jpg', title: 'ONE Road', description: 'The city sleeps under a veil of rain. Streetlights cast a warm glow on slick pavement, creating a shimmering river of reflected light.')),
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(TitleOfCard: 'Flowers', CardImage: 'assets/images/flowers1.jpeg', title: 'Pretty Blue Flowers', description: 'If ever there were an unforgettable bloom, it’s the forget-me-not flower. Famous for their delicate blue flowers featuring yellow throats, when grown well, they’re prolific bloomers that will flower throughout most of the growing season.  ')),
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(TitleOfCard: 'Dawn', CardImage: 'assets/images/dawn.jpg', title: "Twilight Time of Day", description: "Dawn is the time that marks the beginning of twilight before sunrise. It is recognized by the appearance of indirect sunlight being scattered in Earth's atmosphere, when the centre of the Sun's disc has reached 18° below the observer's horizon")),
                ResponsiveGridCol(
                    xs: 6, sm: 6, md: 6, lg: 6,xl: 6,
                    child: const card(TitleOfCard: 'leaves', CardImage: 'assets/images/leaves.jpg', title: "Just leaves", description: "A flattened structure of a higher plant, typically green and blade-like, that is attached to a stem directly or via a stalk. Leaves are the main organs of photosynthesis and transpiration."))

              ],
            ),
          );
        }else{
          return  SingleChildScrollView(
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(
                        TitleOfCard: 'Mood', CardImage: 'assets/images/card1.jpg', title: 'Mood with nature', description: 'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings ')),
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(TitleOfCard: 'Aesthetic', CardImage: 'assets/images/aesthetic.jpg', title: 'Cycle Chic (A Clothes Horse)', description: "I honestly did not put together this outfit thinking I'll dress like the human version of my bicycle but thats pretty much how it came out! We found my bicycle at an auction that was full of random")),
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(TitleOfCard: 'Animal', CardImage: 'assets/images/Animals.jpg', title: 'Tiger Profile', description: 'Tigers are nocturnal carnivores known for being one of the most iconic, and largest, of the big cats.They live in a diverse range of habitats across Asia, with most being found in India, but also in China, Russia, Thailand and Malaysia.')),
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(TitleOfCard: 'City', CardImage: 'assets/images/City.jpg', title: 'Getting Around in New York City', description: 'Lots of people travel to New York, plop themselves down into Time Square, and never go anywhere else. They seem to fear venturing into neighborhoods that exist for purposes other than tourism.')),
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(TitleOfCard: 'Travel', CardImage: 'assets/images/travel.jpg', title: 'Incredible travel photography', description: 'Being able to capture a moment and look back on it is incredibly powerful. As humans, we are wired to always look forward and continue progressing')),
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(TitleOfCard: 'Sky', CardImage: 'assets/images/sky.jpg', title: 'Starry Night', description: 'Since humans first looked skyward, the night sky has remained virtually unchanged. For ages, people around the globe have found the heavens a source of inspiration for stories and art')),
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(TitleOfCard: 'Road', CardImage: 'assets/images/road.jpg', title: 'ONE Road', description: 'The city sleeps under a veil of rain. Streetlights cast a warm glow on slick pavement, creating a shimmering river of reflected light.')),
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(TitleOfCard: 'Flowers', CardImage: 'assets/images/flowers1.jpeg', title: 'Pretty Blue Flowers', description: 'If ever there were an unforgettable bloom, it’s the forget-me-not flower. Famous for their delicate blue flowers featuring yellow throats, when grown well, they’re prolific bloomers that will flower throughout most of the growing season.  ')),
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(TitleOfCard: 'Dawn', CardImage: 'assets/images/dawn.jpg', title: "Twilight Time of Day", description: "Dawn is the time that marks the beginning of twilight before sunrise. It is recognized by the appearance of indirect sunlight being scattered in Earth's atmosphere, when the centre of the Sun's disc has reached 18° below the observer's horizon")),
                ResponsiveGridCol(
                    xs: 3, sm: 3, md: 3, lg: 3,xl: 3,
                    child: const card(TitleOfCard: 'leaves', CardImage: 'assets/images/leaves.jpg', title: "Just leaves", description: "A flattened structure of a higher plant, typically green and blade-like, that is attached to a stem directly or via a stalk. Leaves are the main organs of photosynthesis and transpiration."))
              ],
            ),
          );
        }
      }),
    );
  }
}