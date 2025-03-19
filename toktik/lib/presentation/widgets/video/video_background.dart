import 'package:flutter/material.dart';



class VideoBackground extends StatelessWidget {


final List<Color> colors;
final List<double> stops;

  const VideoBackground({
    super.key, 
    this.colors = const[
      Colors.transparent,
      Colors.black87,
    ], 
    this.stops = const [0.0,1.1],
  }):assert( colors.length == stops.length, 'Stops y Colors deben tener el mismo tamaño');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            stops: [0.5, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )
        )
      )
    );
  }
}