import 'package:flutter/material.dart';
import 'package:parrainage_/pages/splash_page.dart';
import 'package:parrainage_/screens/bottom_navigation_bar_screen.dart';
import 'package:parrainage_/screens/home_screeen.dart';
import 'package:parrainage_/screens/candidat_detail_screen.dart';
import 'package:parrainage_/screens/candidat_list_screen.dart';
import 'package:parrainage_/screens/menu_screen.dart';
import 'package:parrainage_/screens/statistiques_parrainage_screen.dart';
import 'package:parrainage_/screens/verification_fiche_electorale_screen.dart';

// import 'package:parrainage_/screens/auth/login_screen.dart';
// **************************************************************************
// import 'package:flutter_ecommerce_app/src/config/route.dart';
// import 'package:flutter_ecommerce_app/src/pages/mainPage.dart';
// import 'package:flutter_ecommerce_app/src/pages/product_detail.dart';
// import 'package:flutter_ecommerce_app/src/widgets/customRoute.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'src/themes/theme.dart';
// **************************************************************************

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const LoginScreen(),
      // home: SplashPage(),//la page d'acuelle pour ma connexion
      // home:HomeScreen(),//la page pour le menu
      // home: BottomNavigationBarScreen(), // Utilisez ici la page de navigation inférieure
      home: MenuScreen(),


    );
  }
}

// *****************************************************
