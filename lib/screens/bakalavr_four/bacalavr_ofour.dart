import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myacademy/screens/bakalavr_four/four_bacalavr.dart';
import 'package:myacademy/screens/bakalavr_four/fourr_bacalavr.dart';

@RoutePage()
class BacalavrFourCourses extends StatefulWidget {
  const BacalavrFourCourses({super.key});

  @override
  State<BacalavrFourCourses> createState() => _BacalavrFourCoursesState();
}

class _BacalavrFourCoursesState extends State<BacalavrFourCourses> {
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
          FourBacalavrCourses(),
          FourrBacalavrCourses(),
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
              label: '236, 107, 181, 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_sharp),
              label: '57, 225, 108',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.article_sharp),
            //   label: '1-1, 1-2, 252',
            // ),
          ],
          onTap: onSelectTab),
      appBar: AppBar(
        title: const Text('Расписание O4'),
      ),
    );
  }
}
