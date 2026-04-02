import 'package:diagnos_ai/core/class/crud_with_dio.dart';
import 'package:diagnos_ai/core/router/app_router.dart';
import 'package:diagnos_ai/core/services/services.dart';
import 'package:diagnos_ai/core/shared/my_cash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async{


  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await CashHelper.init();

  await DioHelper.init();
  await initializedServices();

  runApp(
      const ProviderScope(
        child: MyApp(),
      ));
}

class MyApp extends ConsumerWidget  {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context , WidgetRef ref) {
    return MaterialApp.router(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //
      // ),

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF2CC0D),
          brightness: Brightness.light,
        ),
        textTheme: GoogleFonts.lexendTextTheme(
          Theme.of(context).textTheme,
        ),
        scaffoldBackgroundColor: const Color(0xFF1A1810),
        cardColor: const Color(0xFF2A281F),
      ),

      debugShowCheckedModeBanner: false,
      routerConfig  : appRouter,


    );
  }
}


