import 'package:diagnos_ai/controller/Authentication/sign_up/signup_controller.dart';
import 'package:diagnos_ai/controller/Authentication/sign_up/signup_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final patientRegistrationProvider =
NotifierProvider<PatientRegistrationController, PatientRegistrationState>(
  PatientRegistrationController.new,
);