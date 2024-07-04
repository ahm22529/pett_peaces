import 'package:flutter/material.dart';

class ProgressSlider extends StatefulWidget {
  @override
  _ProgressSliderState createState() => _ProgressSliderState();
}

class _ProgressSliderState extends State<ProgressSlider> {
  double _currentValue = 0.0;
  final double _maxValue = 2000.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(
          value: _currentValue,
          min: 0,
          max: _maxValue,
          divisions: _maxValue.toInt(),
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
          activeColor: Color(0xffF78E32),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
