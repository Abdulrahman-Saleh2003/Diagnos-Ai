import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:diagnos_ai/controller/Authentication/logIn/log_in_provider.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/bottom_hint.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/build_background.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/build_logo_section.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/login_card.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.sizeOf(context);
    final scale = size.width / 375;

    final state = ref.watch(loginProvider);
    final controller = ref.read(loginProvider.notifier);

    ref.listen(loginProvider, (prev, next) {
      if (next.loginSuccess) {
        context.go('/HomeScreen');
      }
    });

    return Scaffold(
      backgroundColor: const Color(0xFF111317),

      body: Stack(
        children: [
          const BuildBackground(),

          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 24 * scale,
                vertical: 40 * scale,
              ),

              child: Form(
                key: controller.formKey,
                autovalidateMode: AutovalidateMode.onUnfocus,

                child: Column(
                  children: [
                    SizedBox(height: 30 * scale),

                    const BuildLogoSection(),

                    SizedBox(height: 50 * scale),

                    LoginCard(
                      selectedType: state.selectedType,
                      onTypeChanged: controller.changeType,

                      emailController: controller.emailController,
                      phoneController: controller.phoneController,
                      passwordController: controller.passwordController,

                      selectedCountryCode: state.countryCode,
                      onCountryChanged: controller.changeCountry,

                      isPasswordVisible: state.isPasswordVisible,
                      onTogglePassword: controller.togglePassword,

                      onLoginPressed: controller.login,
                    ),

                    SizedBox(height: 40 * scale),

                    const BottomHint(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}