import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myacademy/screens/k_otwo/college_kotwo_one.dart';
import 'package:myacademy/screens/k_otwo/college_kotwo_two.dart';

@RoutePage()
class CollegeTwoCourses extends StatefulWidget {
  const CollegeTwoCourses({super.key});

  @override
  State<CollegeTwoCourses> createState() => _CollegeTwoCoursesState();
}

class _CollegeTwoCoursesState extends State<CollegeTwoCourses> {
  int _selectedTab = 0;
  final _pagecontroller = PageController();
  // final theme = Theme.of(context);

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
      _pagecontroller.animateToPage(index,
          duration: const Duration(milliseconds: 300), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pagecontroller,
        onPageChanged: (value) {
          setState(() => _selectedTab = value);
        },
        children: const [
          CollegeKTwoOne(),
          CollegeKTwoTwo(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          backgroundColor: const Color(0xff3498DB),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.article_sharp),
              label: '3, 238, 281, 51',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_sharp),
              label: '108, 18, 179, 299',
            ),
          ],
          onTap: onSelectTab),
      appBar: AppBar(
        title: const Text('Расписание K-O2'),
      ),
    );
  }
}
