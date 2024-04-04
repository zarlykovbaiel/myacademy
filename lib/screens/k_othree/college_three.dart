import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myacademy/screens/k_othree/college_kothree_one.dart';

@RoutePage()
class CollegeThreeCourses extends StatefulWidget {
  const CollegeThreeCourses({super.key});

  @override
  State<CollegeThreeCourses> createState() => _CollegeThreeCoursesState();
}

class _CollegeThreeCoursesState extends State<CollegeThreeCourses> {
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
          CollegeKThreeOne(),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _selectedTab,
      //     backgroundColor: const Color(0xff3498DB),
      //     selectedItemColor: Colors.white,
      //     unselectedItemColor: Colors.white54,
      //     selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.article_sharp),
      //         label: '181, 238, 51 \n 18, 225',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.article_sharp),
      //         label: '181, 238, 51 \n 18, 225',
      //       ),
      //     ],
      //     onTap: onSelectTab),
      appBar: AppBar(
        title: const Text('Расписание K-O3'),
      ),
    );
  }
}
