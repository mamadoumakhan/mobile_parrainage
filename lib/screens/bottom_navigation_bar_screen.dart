// bottom_navigation_bar_screen.dart

// import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parrainage_/screens/candidat_detail_screen.dart';
import 'package:parrainage_/screens/candidat_list_screen.dart';
import 'package:parrainage_/screens/home_screeen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  @override
  _BottomNavigationBarScreenState createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  final NotchBottomBarController _controller = NotchBottomBarController(index: 0);
  final PageController _pageController = PageController(initialPage: 0);

  // final List<Widget> _pages = [
  //   Center(child: Text('Page Accueil')), // Page 1
  //   Center(child: Text('Page Statistiques')), // Page 2
  //   Center(child: Text('Page Profil')), // Page 3
  // ];
  final List<Widget> _pages = [
  CandidatDetailScreen(name: '', image: '',),   // Remplace par vos propres écrans
  HomeScreen(),
  CandidatListScreen(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Application de Parrainage')),
      body: PageView(
        controller: _pageController,
        children: _pages,
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller, // Remplacement de _notchController par _controller
        // pageController: _pageController,
        kIconSize: 30.0, // Remplacez la taille de l'icône par la taille que vous souhaitez
        kBottomRadius: 10.0, // Remplacez par le rayon souhaité pour l'encoche
        onTap: (index) { // Fonction onTap
          setState(() {
            _controller.index = index;
            _pageController.jumpToPage(index);
          });
        },
        bottomBarItems: [
          const BottomBarItem(
            inActiveItem: Icon(Icons.home_filled, color: Colors.blueGrey),
            activeItem: Icon(Icons.home_filled, color: Colors.blueAccent),
            itemLabel: 'Accueil',
          ),
          const BottomBarItem(
            inActiveItem: Icon(Icons.analytics, color: Colors.blueGrey),
            activeItem: Icon(Icons.analytics, color: Colors.blueAccent),
            itemLabel: 'Statistiques',
          ),
          const BottomBarItem(
            inActiveItem: Icon(Icons.person, color: Colors.blueGrey),
            activeItem: Icon(Icons.person, color: Colors.blueAccent),
            itemLabel: 'Profil',
          ),
        ],
        removeMargins: true,
        bottomBarWidth: 500.0,
        bottomBarHeight: 60.0,
        durationInMilliSeconds: 300,
        showLabel: true,
        itemLabelStyle: const TextStyle(color: Colors.black, fontSize: 16.0), // Ajout du mot-clé const
        notchColor: const Color.fromARGB(221, 250, 117, 8),
        color: Colors.cyan,  // Définissez la couleur de fond ici
        elevation: 2.0,
        showBlurBottomBar: true,
        blurOpacity: 0.2,
        blurFilterX: 5.0,
        blurFilterY: 10.0,
      ),
    );
  }
}
