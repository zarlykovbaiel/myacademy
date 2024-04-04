import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ButtonCollege extends StatelessWidget {
  const ButtonCollege({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my academy'),
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.symmetric(vertical: 50)),
          const Center(
            child: SizedBox(
              width: 300,
              height: 48,
              child: CollegeOne(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/college-two-courses');
              },
              child: const Text(
                'Колледж |2| - курс',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 48,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/college-three-courses');
                },
                child: const Text(
                  'Колледж |3| - курс',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 300,
            height: 48,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bacalavr-one-courses');
                },
                child: const Text(
                  ' Бакалавриат |1| - курс',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 48,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bacalavr-two-courses');
                },
                child: const Text(
                  ' Бакалавриат |2| - курс',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 48,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bacalavr-three-courses');
                },
                child: const Text(
                  ' Бакалавриат |3| - курс',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 300,
            height: 48,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/bacalavr-four-courses');
                },
                child: const Text(
                  ' Бакалавриат |4| - курс',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}

class CollegeOne extends StatelessWidget {
  const CollegeOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 300,
        height: 48,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/college-one-courses');
          },
          child: const Text(
            'Колледж |1| - курс',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
