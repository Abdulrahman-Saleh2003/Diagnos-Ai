import 'package:diagnos_ai/OnBoarding/View/onboarding1/onboarding_page1.dart';
import 'package:diagnos_ai/OnBoarding/View/onboarding2/onboarding_page2.dart';
import 'package:diagnos_ai/OnBoarding/View/onboarding3/onboarding_page3.dart';
import 'package:diagnos_ai/OnBoarding/View/onboarding4/onboarding_page4.dart';
import 'package:diagnos_ai/OnBoarding/View/onboarding.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/login_screen.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/test.dart';
import 'package:diagnos_ai/screens/Authentication/SignUp/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



final GoRouter appRouter = GoRouter(
  initialLocation: '/LabDashboardPage',
  // initialLocation: '/LabTrackingScreen',

  routes: [
    // GoRoute(
    //   path: '/login',
    //   builder: (context, state) =>  Container(
    //
    //     color: Colors.white,
    //     child: Center(child: Text("Center")),
    //
    //   ),
    // ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
      // builder: (context, state) => const LoginLabScreen(),

    ),

    GoRoute(
      path: '/PatientRegistrationScreen',
      builder: (context, state) => const PatientRegistrationScreen(),
      // builder: (context, state) => const LoginLabScreen(),

    ),



    GoRoute(
      path: '/LabDashboardPage',
      builder: (context, state) => const OnboardingScreen(),

    ),

    // GoRoute(
    //   path: '/LabDashboardPage',
    //   builder: (context, state) => const LabTrackingScreen(),
    // ),



    // GoRoute(
    //   path: '/OnboardingTwoPage',
    //   builder: (context, state) =>  ExpertCollaborationScreen(),
    //   // builder: (context, state) => const OnboardingTwoPage(),
    // ),
    // GoRoute(
    //   path: '/Onboarding3Screen',
    //   builder: (context, state) =>  Onboarding3Screen(),
    //   // builder: (context, state) => const OnboardingTwoPage(),
    // ),  GoRoute(
    //   path: '/Onboarding4Screen',
    //   builder: (context, state) =>  Onboarding4Screen(),
    //   // builder: (context, state) => const OnboardingTwoPage(),
    // ),



  ],
);