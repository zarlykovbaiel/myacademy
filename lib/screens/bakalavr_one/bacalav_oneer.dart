import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myacademy/screens/bakalavr_one/bacalavr_one.dart';
import 'package:myacademy/screens/bakalavr_one/bacalavr_oone.dart';

@RoutePage()
class BacalavrOneCourses extends StatefulWidget {
  const BacalavrOneCourses({super.key});

  @override
  State<BacalavrOneCourses> createState() => _BacalavrOneCoursesState();
}

class _BacalavrOneCoursesState extends State<BacalavrOneCourses> {
  int _selectedTab = 0;
  final _pagecontroller = PageController();

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
          CollegeBacalavrOone(),
          CollegeBacalavrOne(),
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
              label: '281, 281-2, 51',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_sharp),
              label: '252, 107, 108',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.article_sharp),
            //   label: '1-1, 1-2, 252',
            // ),
          ],
          onTap: onSelectTab),
      appBar: AppBar(
        title: const Text('Расписание O1'),
      ),
    );
  }
}
