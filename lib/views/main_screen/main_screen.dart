// import 'package:flutter/material.dart';
// // import 'package:xpress_sewa/views/bottom_navbar/navbar.dart';
// import 'package:xpress_sewa/views/onboarding_screen/onboarding.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   //page index
//   int _selectedIndex = 0;

//    final List<Widget> _pages = const [
//     MainScreen(),
//     OnboardingScreen(),
    
//       ];

//   //controller to switch page
//   final PageController _pageController = PageController();

//   void _changeIndex(int index) {
//     _pageController.jumpToPage(index);
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void _goToBookService() {
//     _pageController.jumpToPage(4);
//     setState(() {
//       _selectedIndex = 4;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           body:
//           // SizedBox(
//           // width: double.infinity,
//           // child:
//           PageView(
//             controller: _pageController,
//             physics: NeverScrollableScrollPhysics(),
//             //4 different pages for 4 navbar items
//             children: _pages,
//           ),
//           // ),

//           //navbar with constructors changeIndex and seletedIndex
//           bottomNavigationBar: BottomAppBar(
//             color: const Color(0xffEFEFEF),
//             shape: const CircularNotchedRectangle(),
//             // notchMargin: 4.0,
//             child: NavBar(
//               selectedIndex: _selectedIndex,
//               changeIndex: _changeIndex,
//               onFabTapped: _goToBookService,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
