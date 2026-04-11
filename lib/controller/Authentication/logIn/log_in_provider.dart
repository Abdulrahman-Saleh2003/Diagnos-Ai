import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'log_in_controller.dart';
import 'log_in_state.dart';

final loginProvider =
NotifierProvider<LoginController, LoginState>(
  LoginController.new,
);