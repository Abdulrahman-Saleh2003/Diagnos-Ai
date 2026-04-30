


import 'package:diagnos_ai/controller/home/home_state.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/home_screen.dart';
import 'package:diagnos_ai/screens/HomeScreen/profile/profile.dart';
import 'package:diagnos_ai/screens/HomeScreen/report/cbc_report_screen.dart';
import 'package:diagnos_ai/screens/HomeScreen/report/report_screen.dart';
import 'package:diagnos_ai/screens/HomeScreen/report/all_reports_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeController extends Notifier<HomeState> {
  @override
  HomeState build() {
    return const HomeState();
  }

  final List<Widget> pages = [
    const HomeScreen(),
    const AllReportsPage(),

    // const Center(child: Text("APPOINTMENTS", style: TextStyle(color: Colors.white, fontSize: 24))),
    const CBCReportScreen(),
    const BloodCountReportPage(),
    const PatientProfilePage(),
  ];

  void changePage(int index) {
    state = state.copyWith(currentIndex: index);
  }
}