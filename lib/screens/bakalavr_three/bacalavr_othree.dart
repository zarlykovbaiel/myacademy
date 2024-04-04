import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myacademy/screens/bakalavr_three/thre_bacalavr.dart';
import 'package:myacademy/screens/bakalavr_three/three_bacalavr.dart';

@RoutePage()
class BacalavrThreeCourses extends StatefulWidget {
  const BacalavrThreeCourses({super.key});

  @override
  State<BacalavrThreeCourses> createState() => _BacalavrThreeCoursesState();
}

class _BacalavrThreeCoursesState extends State<BacalavrThreeCourses> {
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
          ThreeBacalavrCourses(),
          ThreBacalavrCourses(),
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
              label: '236, 107, 179',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_sharp),
              label: '113, 236, 51',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.article_sharp),
            //   label: '1-1, 1-2, 252',
            // ),
          ],
          onTap: onSelectTab),
      appBar: AppBar(
        title: const Text('Расписание O3'),
      ),
    );
  }
}
