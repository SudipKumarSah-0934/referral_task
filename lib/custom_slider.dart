import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomSliderWithIcons extends StatefulWidget {
  const CustomSliderWithIcons({super.key});

  @override
  _CustomSliderWithIconsState createState() => _CustomSliderWithIconsState();
}

class _CustomSliderWithIconsState extends State<CustomSliderWithIcons> {
  double _sliderValue = 0;
  final List<int> _iconIntervals = [0, 20, 40, 60, 80, 100];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape:
                CustomThumbShape(), // CustomThumbShape replaces the default thumb with an icon
            trackHeight:
                20, // Adjust track height to increase the width of the slider
          ),
          child: Slider(
            value: _sliderValue,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
            min: 0,
            max: 100,
            thumbColor: Colors.amber,
            divisions: 5,
            label: _sliderValue.round().toString(),
          ),
        ),
      ],
    );
  }
}

class CustomThumbShape extends RoundSliderThumbShape {
  // Override the paint method to draw a custom icon instead of the default circle
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(40, 40); // Set the size of your custom icon
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
    Size? size,
  }) {
    final Canvas canvas = context.canvas;

    // Example: Draw a star icon
    final Paint paint = Paint()..color = Colors.blue;
    final double radius = 20; // half of getPreferredSize width/height

    final Path path = Path();
    path.moveTo(center.dx, center.dy - radius);
    for (int i = 0; i < 5; i++) {
      path.lineTo(
        center.dx + radius * math.cos((i * 2 * math.pi / 5)),
        center.dy + radius * math.sin((i * 2 * math.pi / 5)),
      );
      path.lineTo(
        center.dx + radius / 2 * math.cos(((i + 1) * 2 * math.pi / 5)),
        center.dy + radius / 2 * math.sin(((i + 1) * 2 * math.pi / 5)),
      );
    }
    path.close();

    canvas.drawPath(path, paint);
  }
}
