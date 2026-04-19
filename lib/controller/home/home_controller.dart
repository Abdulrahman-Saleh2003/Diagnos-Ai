

// lib/controller/home/home_controller.dart

import 'package:diagnos_ai/controller/home/home_state.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeController extends Notifier<HomeState> {
  @override
  HomeState build() {
    return const HomeState();
  }

  final List<Widget> pages = [
    const HomeScreen(),
    const Center(child: Text("TESTS", style: TextStyle(color: Colors.white, fontSize: 24))),
    const Center(child: Text("APPOINTMENTS", style: TextStyle(color: Colors.white, fontSize: 24))),
    const Center(child: Text("REPORTS", style: TextStyle(color: Colors.white, fontSize: 24))),
  ];

  void changePage(int index) {
    state = state.copyWith(currentIndex: index);
  }
}