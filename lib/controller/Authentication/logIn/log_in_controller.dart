// class LoginState {
//   final String selectedType;
//   final String selectedCountryCode;
//   final bool isPasswordVisible;
//   final bool isLoading;
//
//   const LoginState({
//     this.selectedType = 'email',
//     this.selectedCountryCode = '+966',
//     this.isPasswordVisible = false,
//     this.isLoading = false,
//   });
//
//   LoginState copyWith({
//     String? selectedType,
//     String? selectedCountryCode,
//     bool? isPasswordVisible,
//     bool? isLoading,
//   }) {
//     return LoginState(
//       selectedType: selectedType ?? this.selectedType,
//       selectedCountryCode: selectedCountryCode ?? this.selectedCountryCode,
//       isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
//       isLoading: isLoading ?? this.isLoading,
//     );
//   }
// }


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'log_in_state.dart';

class LoginController extends Notifier<LoginState> {

  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final TextEditingController passwordController;

  final formKey = GlobalKey<FormState>();

  @override
  LoginState build() {
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();

    ref.onDispose(() {
      emailController.dispose();
      phoneController.dispose();
      passwordController.dispose();
    });

    return const LoginState();
  }

  // تغيير النوع
  void changeType(String type) {
    state = state.copyWith(selectedType: type);
  }

  // تغيير الدولة
  void changeCountry(String code) {
    state = state.copyWith(countryCode: code);
  }

  // إظهار/إخفاء كلمة المرور
  void togglePassword() {
    state = state.copyWith(
      isPasswordVisible: !state.isPasswordVisible,
    );
  }

  Future<void> login() async {
    if (!formKey.currentState!.validate()) return;

    state = state.copyWith(isLoading: true);

    await Future.delayed(const Duration(seconds: 2)); // fake API

    state = state.copyWith(
      isLoading: false,
      loginSuccess: true,
    );
  }
}
