// import 'package:diagnos_ai/controller/Authentication/sign_up/signup_state.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter/material.dart';
//
// class RegisterController extends Notifier<RegisterState> {
//
//   late final TextEditingController phoneController;
//   late final TextEditingController emailController;
//   late final TextEditingController nationalIdController;
//   late final TextEditingController passwordController;
//
//   final formKey = GlobalKey<FormState>();
//
//   @override
//   RegisterState build() {
//     phoneController = TextEditingController();
//     emailController = TextEditingController();
//     nationalIdController = TextEditingController();
//     passwordController = TextEditingController();
//
//     ref.onDispose(() {
//       phoneController.dispose();
//       emailController.dispose();
//       nationalIdController.dispose();
//       passwordController.dispose();
//     });
//
//     return const RegisterState();
//   }
//
//   // ===== Actions =====
//
//   void changeCountry(String code) {
//     state = state.copyWith(countryCode: code);
//   }
//
//   void togglePassword() {
//     state = state.copyWith(
//       isPasswordVisible: !state.isPasswordVisible,
//     );
//   }
//
//   void changeGender(String value) {
//     state = state.copyWith(gender: value);
//   }
//
//   void changeWeight(double value) {
//     state = state.copyWith(weight: value);
//   }
//
//   Future<void> submit() async {
//     if (!formKey.currentState!.validate()) return;
//
//     state = state.copyWith(isLoading: true);
//
//     await Future.delayed(const Duration(seconds: 2));
//
//     state = state.copyWith(isLoading: false);
//   }
// }


import 'package:diagnos_ai/controller/Authentication/sign_up/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PatientRegistrationController extends Notifier<PatientRegistrationState> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nationalIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String countryCode = '+966';
  bool isPasswordVisible = false;

  @override
  PatientRegistrationState build() {
    ref.onDispose(() {
      phoneController.dispose();
      emailController.dispose();
      nationalIdController.dispose();
      passwordController.dispose();
    });

    return const PatientRegistrationState();
  }

  void changeGender(String gender) {
    state = state.copyWith(selectedGender: gender);
  }

  void changeWeight(double newWeight) {
    state = state.copyWith(weight: newWeight);
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    ref.notifyListeners();
  }

  void changeCountryCode(String code) {
    countryCode = code;
    ref.notifyListeners();
  }

  void goToHome(BuildContext context){
    context.go('/Home');
    // context.go('/HomeScreen');


  }

  Future<void> register(BuildContext context) async {
    if (!formKey.currentState!.validate()) return;

    state = state.copyWith(isLoading: true);

    // محاكاة API
    await Future.delayed(const Duration(seconds: 2));

    state = state.copyWith(
      isLoading: false,
      registrationSuccess: true,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Node Initialized Successfully')),
    );

    // يمكنك التنقل هنا
    // context.go('/home');
  }
}