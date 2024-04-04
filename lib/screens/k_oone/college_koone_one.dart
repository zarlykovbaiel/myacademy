import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CollegeKOneOne extends StatelessWidget {
  const CollegeKOneOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          InteractiveViewer(
            maxScale: 5.0,
            minScale: 0.01,
            boundaryMargin: const EdgeInsets.all(0),
            child: Image.asset('assets/images/k-011.jpg'),
          ),
        ],
      ),
    );
  }
}
