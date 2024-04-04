import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        title: Text(
          'my academy',
          textAlign: TextAlign.center,
          style: theme.appBarTheme.titleTextStyle,
        ),
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/at1.png',
                height: 190,
                width: 190,
              ),
              SizedBox(
                width: 250,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/button-college');
                  },
                  child: const Text(
                    'Расписание',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    _launchUrl();
                  },
                  child: const Text(
                    'AVN',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 250,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    _launchUrl2();
                  },
                  child: const Text(
                    'Наш сайт',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: SizedBox(
      //   width: 50,
      //   height: 50,
      //   child: FloatingActionButton(
      //     // shape: ,
      //     onPressed: () {
      //       _instagramUrl();
      //     },
      //     child: Image.asset(
      //       'assets/images/in.jpg',
      //     ),
      //   ),
      // ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse('http://avn.at.edu.kg:3000/lms/login'))) {
      throw Exception('Could not launch http://avn.at.edu.kg:3000/lms/login');
    }
  }

  Future<void> _launchUrl2() async {
    if (!await launchUrl(Uri.parse('http://at.edu.kg'))) {
      throw Exception('Could not launch http://at.edu.kg');
    }
  }

  Future<void> _instagramUrl() async {
    if (!await launchUrl(
        Uri.parse('https://www.instagram.com/academy_of_tourism_official/'))) {
      throw Exception(
          'Could not launch https://www.instagram.com/academy_of_tourism_official/');
    }
  }
}
