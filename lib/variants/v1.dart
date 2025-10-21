import 'package:flutter/material.dart';

class V1 extends StatefulWidget {
  const V1({super.key});

  @override
  State<V1> createState() => _V1State();
}

class _V1State extends State<V1> {

  double _currentWidth = 50.0;
  double _currentHeight = 50.0;
  double _currentRadius = 0.0;

  void _onChangeWidth(double value) {
    setState(() {
      _currentWidth = value;
    });
  }

  void _onChangeHeight(double value) {
    setState(() {
      _currentHeight = value;
    });
  }

  void _onChangeRadius(double value) {
    setState(() {
      _currentRadius = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Центруємо
      children: [

        Text('Ширина: ${_currentWidth.toStringAsFixed(2)}'),

        Slider(
          value: _currentWidth,
          min: 50,
          max: 250,
          onChanged: _onChangeWidth,
        ),

        Text('Висота: ${_currentHeight.toStringAsFixed(2)}'),
        Slider(
          value: _currentHeight,
          min: 50,
          max: 250,
          onChanged: _onChangeHeight,
        ),

        Text('Радіус: ${_currentRadius.toStringAsFixed(2)}'),
        Slider(
          value: _currentRadius,
          min: 0,
          max: 100,
          onChanged: _onChangeRadius,
        ),



        const SizedBox(height: 50),

        // 6. Наш Контейнер!
        Container(
          width: _currentWidth,  // <-- "Читає" з пам'яті
          height: _currentHeight, // <-- "Читає" з пам'яті
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(_currentRadius), // <-- "Читає"
            ),
          ),
        ),



      ],
    );
  }
}

