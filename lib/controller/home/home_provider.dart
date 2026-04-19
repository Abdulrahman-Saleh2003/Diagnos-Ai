
import 'package:diagnos_ai/controller/home/home_controller.dart';
import 'package:diagnos_ai/controller/home/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeProvider = NotifierProvider<HomeController, HomeState>(
  HomeController.new,
);