// import 'package:diagnos_ai/screens/HomeScreen/Home/build_bottom_navigation_home_screen.dart';
// import 'package:diagnos_ai/screens/HomeScreen/Home/home_screen.dart';
// import 'package:flutter/material.dart';
//
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context ) {
//
//
//     final pages = [
//       const HomeScreen(),
//       const Center(child: Text("TESTS",style: TextStyle(color: Colors.white),)),
//       const Center(child: Text("APPOINTMENTS",style: TextStyle(color: Colors.white),)),
//       const Center(child: Text("REPORTS",style: TextStyle(color: Colors.white),)),
//     ];
//
//     return Scaffold(
//       body: pages[0],
//       bottomNavigationBar: BuildBottomNavigationHomeScreen(
//         currentIndex:0,
//         onTabChanged:(int index) {
//         } ,
//       ),
//     );
//   }
// }
//

import 'package:diagnos_ai/controller/home/home_provider.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/build_bottom_navigation_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeProvider);
    final homeController = ref.read(homeProvider.notifier);

    return Scaffold(
      // backgroundColor:
      // const Color(0xFF1A1810),

      body: homeController.pages[homeState.currentIndex],
      bottomNavigationBar: BuildBottomNavigationHomeScreen(
        currentIndex: homeState.currentIndex,
        onTabChanged: (int index) {
          homeController.changePage(index);
        },
      ),
    );
  }
}