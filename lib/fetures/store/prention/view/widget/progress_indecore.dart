import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pett_peaces/fetures/store/prention/manager/cubit/filter_cubit.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class ProgressSlider extends StatefulWidget {
  final String upervule, lowervule;

  const ProgressSlider(
      {super.key, required this.upervule, required this.lowervule});
  @override
  _ProgressSliderState createState() => _ProgressSliderState();
}

class _ProgressSliderState extends State<ProgressSlider> {
  double _lowerValue = 0.0;
  double _upperValue = 2000.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _lowerValue = double.parse(widget.lowervule);
    _upperValue = double.parse(widget.upervule);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SfRangeSlider(
              activeColor: Colors.orange,
              min: 0.0,
              max: 2000.0,
              values: SfRangeValues(_lowerValue, _upperValue),
              interval: 500,
              showLabels: false,
              showTicks: false,
              onChanged: (SfRangeValues newValues) {
                setState(() {
                  _lowerValue = newValues.start;
                  _upperValue = newValues.end;

                  // Convert double values to int if necessary
                  BlocProvider.of<FilterCubit>(context).saveMinMaxValues(
                      _upperValue.toInt(), _lowerValue.toInt());
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
