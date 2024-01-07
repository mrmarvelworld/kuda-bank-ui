import 'package:flutter/material.dart';
import 'package:kuda_ui/screens/auth_screen.dart';
import 'package:kuda_ui/screens/cards_screen.dart';
import 'package:kuda_ui/screens/layout.dart';
import 'package:kuda_ui/screens/more_screen.dart';
import 'package:kuda_ui/screens/home_screen.dart';
import 'package:kuda_ui/screens/pay_screen.dart';
import 'package:kuda_ui/screens/paystack_screen.dart';
import 'package:kuda_ui/screens/send_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // await Future.delayed(
  //   const Duration(seconds: 2),
  // );
  // FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.grey.shade100,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Layout(),
      routes: {
        PayScreen.routeName: (context) => PayScreen(),
        MoreScreen.routeName: (context) => MoreScreen()
      },
    );
  }
}
