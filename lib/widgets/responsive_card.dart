import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';

class ResponsiveCard extends StatefulWidget {
  const ResponsiveCard({
    Key? key,
    this.name,
    this.description,
    required this.image,
  }) : super(key: key);

  final String? name, description, image;

  @override
  State<ResponsiveCard> createState() => _ResponsiveCardState();
}

class _ResponsiveCardState extends State<ResponsiveCard> {
  bool isHover = false;
  Offset mousePosition = const Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (x) {
        setState(() {
          isHover = false;
        });
      },
      onHover: (h) {
        setState(() {
          mousePosition += h.delta;
          mousePosition *= .12;
        });
      },
      child: SizedBox(
        height: 450,
        width: 300,
        child: Stack(
          children: [buildImage(), buildGradient(), buildDescription()],
        ),
      ),
    );
  }

  buildImage() {
    return AnimatedPositioned(
      duration: carouselAnimDuration, //? Duration(milliseconds: 600);
      curve: cardAnimationCurve, //?  Curves.easeOutCubic;
      left: isHover ? -100 + mousePosition.dx : -100,
      top: isHover ? -40 + mousePosition.dy : 0,
      bottom: isHover ? -40 + mousePosition.dy : 0,
      right: isHover ? -100 + mousePosition.dx : -100,
      child: Container(
        height: isHover ? 500 : 450,
        width: isHover ? 350 : 300,
        clipBehavior: Clip.antiAlias,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: const BorderRadius.all(Radius.circular(0)),
          boxShadow: [
            BoxShadow(
              blurRadius: isHover ? 30 : 2,
              spreadRadius: isHover ? 8 : 3,
              color: kDarker,
            )
          ],
          image: DecorationImage(
            image: AssetImage(widget.image!),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  buildGradient() {
    return AnimatedContainer(
      duration: carouselAnimDuration, //? Duration(milliseconds: 600);
      curve: cardAnimationCurve, //?  Curves.easeOutCubic;
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kDarker.withOpacity(isHover ? .5 : 0),
            trans, //?
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topRight,
        ),
      ),
    );
  }

  buildDescription() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            duration: carouselAnimDuration, //? Duration(milliseconds: 600);
            child: Text(widget.name!),
            style: GoogleFonts.crimsonPro(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: kWhite.withOpacity(isHover ? 1 : .6),
              shadows: const <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 0.9,
                  color: kDarker,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          AnimatedDefaultTextStyle(
            duration: carouselAnimDuration, //? Duration(milliseconds: 600);
            child: Text(widget.description!),
            style: GoogleFonts.openSans(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: kWhite.withOpacity(isHover ? 1 : .6),
              shadows: const <Shadow>[
                Shadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 0.9,
                  color: kDarker,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
