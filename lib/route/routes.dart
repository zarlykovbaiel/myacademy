import 'package:myacademy/screens/bakalavr_four/bacalavr_ofour.dart';
import 'package:myacademy/screens/bakalavr_one/bacalav_oneer.dart';
import 'package:myacademy/screens/bakalavr_three/bacalavr_othree.dart';
import 'package:myacademy/screens/bakalavr_two/bacalavr_otwo.dart';
import 'package:myacademy/screens/k_oone/college_one.dart';
import 'package:myacademy/screens/k_othree/college_three.dart';
import 'package:myacademy/screens/k_otwo/college_two.dart';
import 'package:myacademy/screens/my_home_screen.dart';
import 'package:myacademy/screens/schedule.dart';

final routes = {
  '/': (context) => const MyHomePage(),
  '/college-one-courses': (context) => const CollegeOneCourses(),
  '/button-college': (context) => const ButtonCollege(),
  '/college-two-courses': (context) => const CollegeTwoCourses(),
  '/college-three-courses': (context) => const CollegeThreeCourses(),
  '/bacalavr-one-courses': (context) => const BacalavrOneCourses(),
  '/bacalavr-two-courses': (context) => const BacalavrTwoCourses(),
  '/bacalavr-three-courses': (context) => const BacalavrThreeCourses(),
  '/bacalavr-four-courses': (context) => const BacalavrFourCourses(),
};
