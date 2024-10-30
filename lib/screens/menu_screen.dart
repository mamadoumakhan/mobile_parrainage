import 'package:flutter/material.dart';
import 'package:flutter_side_menu/flutter_side_menu.dart';
// import 'package:side_menu/side_menu.dart'; // Assurez-vous d'avoir importé votre package si nécessaire

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Row(
          children: [
            SideMenu(
              builder: (data) => SideMenuData(
                header: const Text('Menu'),
                items: [
                  SideMenuItemDataTile(
                    isSelected: true,
                    onTap: () {},
                    title: 'Item 1',
                    icon: const Icon(Icons.home),
                  ),
                  SideMenuItemDataTile(
                    isSelected: true,
                    onTap: () {},
                    title: 'Item 2',
                    icon: const Icon(Icons.home),
                  ),
                  SideMenuItemDataTile(
                    isSelected: true,
                    onTap: () {},
                    title: 'Item 3',
                    icon: const Icon(Icons.home),
                  ),
                ],
                footer: const Text('SunuParrainage'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: const Center(
                  child: Text(
                    'body',
                  ),
                ),
              ),
            ),
            SideMenu(
              position: SideMenuPosition.right,
              builder: (data) => const SideMenuData(
                customChild: Text('Custom view'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
