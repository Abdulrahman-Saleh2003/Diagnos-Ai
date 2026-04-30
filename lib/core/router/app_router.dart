import 'package:diagnos_ai/OnBoarding/View/onboarding.dart';
import 'package:diagnos_ai/screens/Authentication/LogIn/login_screen.dart';
import 'package:diagnos_ai/screens/Authentication/SignUp/registration_screen.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/home.dart';
import 'package:diagnos_ai/screens/HomeScreen/Home/home_screen.dart';
import 'package:diagnos_ai/screens/HomeScreen/report/report_screen.dart';
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
      path: '/HomeScreen',
      builder: (context, state) => const HomeScreen(),
      // builder: (context, state) => const LabDashboardScreen(),
      // builder: (context, state) => const LoginLabScreen(),

    ),   GoRoute(
      path: '/Home',
      builder: (context, state) => const Home(),


    ),  GoRoute(
      path: '/CBCReportScreen',
      builder: (context, state) => const CBCReportScreen(),


    ),

    GoRoute(
      path: '/PatientRegistrationScreen',
      builder: (context, state) => const PatientRegistrationScreen(),
      // builder: (context, state) => const LoginLabScreen(),

    ),



    GoRoute(
      path: '/LabDashboardPage',
      builder: (context, state) => const OnboardingScreen(),

    ), GoRoute(
      path: '/CBCReportScreen',
      builder: (context, state) => const CBCReportScreen(),

    ),





  ],
);